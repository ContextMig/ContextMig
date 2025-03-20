.class final Lcom/squareup/moshi/BufferedSinkJsonWriter;
.super Lcom/squareup/moshi/JsonWriter;
.source "BufferedSinkJsonWriter.java"


# static fields
.field private static final REPLACEMENT_CHARS:[Ljava/lang/String;


# instance fields
.field private deferredName:Ljava/lang/String;

.field private indent:Ljava/lang/String;

.field private lenient:Z

.field private pathIndices:[I

.field private pathNames:[Ljava/lang/String;

.field private promoteNameToValue:Z

.field private separator:Ljava/lang/String;

.field private serializeNulls:Z

.field private final sink:Lokio/BufferedSink;

.field private stack:[I

.field private stackSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 44
    const/16 v1, 0x80

    new-array v1, v1, [Ljava/lang/String;

    sput-object v1, Lcom/squareup/moshi/BufferedSinkJsonWriter;->REPLACEMENT_CHARS:[Ljava/lang/String;

    .line 45
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x1f

    if-gt v0, v1, :cond_0

    .line 46
    sget-object v1, Lcom/squareup/moshi/BufferedSinkJsonWriter;->REPLACEMENT_CHARS:[Ljava/lang/String;

    const-string v2, "\\u%04x"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 45
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 48
    :cond_0
    sget-object v1, Lcom/squareup/moshi/BufferedSinkJsonWriter;->REPLACEMENT_CHARS:[Ljava/lang/String;

    const/16 v2, 0x22

    const-string v3, "\\\""

    aput-object v3, v1, v2

    .line 49
    sget-object v1, Lcom/squareup/moshi/BufferedSinkJsonWriter;->REPLACEMENT_CHARS:[Ljava/lang/String;

    const/16 v2, 0x5c

    const-string v3, "\\\\"

    aput-object v3, v1, v2

    .line 50
    sget-object v1, Lcom/squareup/moshi/BufferedSinkJsonWriter;->REPLACEMENT_CHARS:[Ljava/lang/String;

    const/16 v2, 0x9

    const-string v3, "\\t"

    aput-object v3, v1, v2

    .line 51
    sget-object v1, Lcom/squareup/moshi/BufferedSinkJsonWriter;->REPLACEMENT_CHARS:[Ljava/lang/String;

    const/16 v2, 0x8

    const-string v3, "\\b"

    aput-object v3, v1, v2

    .line 52
    sget-object v1, Lcom/squareup/moshi/BufferedSinkJsonWriter;->REPLACEMENT_CHARS:[Ljava/lang/String;

    const/16 v2, 0xa

    const-string v3, "\\n"

    aput-object v3, v1, v2

    .line 53
    sget-object v1, Lcom/squareup/moshi/BufferedSinkJsonWriter;->REPLACEMENT_CHARS:[Ljava/lang/String;

    const/16 v2, 0xd

    const-string v3, "\\r"

    aput-object v3, v1, v2

    .line 54
    sget-object v1, Lcom/squareup/moshi/BufferedSinkJsonWriter;->REPLACEMENT_CHARS:[Ljava/lang/String;

    const/16 v2, 0xc

    const-string v3, "\\f"

    aput-object v3, v1, v2

    .line 55
    return-void
.end method

.method constructor <init>(Lokio/BufferedSink;)V
    .locals 2
    .param p1, "sink"    # Lokio/BufferedSink;

    .prologue
    const/16 v1, 0x20

    .line 88
    invoke-direct {p0}, Lcom/squareup/moshi/JsonWriter;-><init>()V

    .line 60
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/squareup/moshi/BufferedSinkJsonWriter;->stack:[I

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lcom/squareup/moshi/BufferedSinkJsonWriter;->stackSize:I

    .line 63
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/squareup/moshi/BufferedSinkJsonWriter;->push(I)V

    .line 66
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/squareup/moshi/BufferedSinkJsonWriter;->pathNames:[Ljava/lang/String;

    .line 67
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/squareup/moshi/BufferedSinkJsonWriter;->pathIndices:[I

    .line 78
    const-string v0, ":"

    iput-object v0, p0, Lcom/squareup/moshi/BufferedSinkJsonWriter;->separator:Ljava/lang/String;

    .line 89
    if-nez p1, :cond_0

    .line 90
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "sink == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_0
    iput-object p1, p0, Lcom/squareup/moshi/BufferedSinkJsonWriter;->sink:Lokio/BufferedSink;

    .line 93
    return-void
.end method

.method private beforeName()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 393
    invoke-direct {p0}, Lcom/squareup/moshi/BufferedSinkJsonWriter;->peek()I

    move-result v0

    .line 394
    .local v0, "context":I
    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 395
    iget-object v1, p0, Lcom/squareup/moshi/BufferedSinkJsonWriter;->sink:Lokio/BufferedSink;

    const/16 v2, 0x2c

    invoke-interface {v1, v2}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 399
    :cond_0
    invoke-direct {p0}, Lcom/squareup/moshi/BufferedSinkJsonWriter;->newline()V

    .line 400
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/squareup/moshi/BufferedSinkJsonWriter;->replaceTop(I)V

    .line 401
    return-void

    .line 396
    :cond_1
    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 397
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Nesting problem."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private beforeValue()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 410
    invoke-direct {p0}, Lcom/squareup/moshi/BufferedSinkJsonWriter;->peek()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 437
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Nesting problem."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 412
    :pswitch_1
    iget-boolean v0, p0, Lcom/squareup/moshi/BufferedSinkJsonWriter;->lenient:Z

    if-nez v0, :cond_0

    .line 413
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JSON must have only one top-level value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 418
    :cond_0
    :pswitch_2
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/squareup/moshi/BufferedSinkJsonWriter;->replaceTop(I)V

    .line 439
    :goto_0
    return-void

    .line 422
    :pswitch_3
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/squareup/moshi/BufferedSinkJsonWriter;->replaceTop(I)V

    .line 423
    invoke-direct {p0}, Lcom/squareup/moshi/BufferedSinkJsonWriter;->newline()V

    goto :goto_0

    .line 427
    :pswitch_4
    iget-object v0, p0, Lcom/squareup/moshi/BufferedSinkJsonWriter;->sink:Lokio/BufferedSink;

    const/16 v1, 0x2c

    invoke-interface {v0, v1}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 428
    invoke-direct {p0}, Lcom/squareup/moshi/BufferedSinkJsonWriter;->newline()V

    goto :goto_0

    .line 432
    :pswitch_5
    iget-object v0, p0, Lcom/squareup/moshi/BufferedSinkJsonWriter;->sink:Lokio/BufferedSink;

    iget-object v1, p0, Lcom/squareup/moshi/BufferedSinkJsonWriter;->separator:Ljava/lang/String;

    invoke-interface {v0, v1}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    .line 433
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/squareup/moshi/BufferedSinkJsonWriter;->replaceTop(I)V

    goto :goto_0

    .line 410
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private close(IILjava/lang/String;)Lcom/squareup/moshi/JsonWriter;
    .locals 4
    .param p1, "empty"    # I
    .param p2, "nonempty"    # I
    .param p3, "closeBracket"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 158
    invoke-direct {p0}, Lcom/squareup/moshi/BufferedSinkJsonWriter;->peek()I

    move-result v0

    .line 159
    .local v0, "context":I
    if-eq v0, p2, :cond_0

    if-eq v0, p1, :cond_0

    .line 160
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Nesting problem."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 162
    :cond_0
    iget-object v1, p0, Lcom/squareup/moshi/BufferedSinkJsonWriter;->deferredName:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 163
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dangling name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/squareup/moshi/BufferedSinkJsonWriter;->deferredName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 166
    :cond_1
    iget v1, p0, Lcom/squareup/moshi/BufferedSinkJsonWriter;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/squareup/moshi/BufferedSinkJsonWriter;->stackSize:I

    .line 167
    iget-object v1, p0, Lcom/squareup/moshi/BufferedSinkJsonWriter;->pathNames:[Ljava/lang/String;

    iget v2, p0, Lcom/squareup/moshi/BufferedSinkJsonWriter;->stackSize:I

    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 168
    iget-object v1, p0, Lcom/squareup/moshi/BufferedSinkJsonWriter;->pathIndices:[I

    iget v2, p0, Lcom/squareup/moshi/BufferedSinkJsonWriter;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    .line 169
    if-ne v0, p2, :cond_2

    .line 170
    invoke-direct {p0}, Lcom/squareup/moshi/BufferedSinkJsonWriter;->newline()V

    .line 172
    :cond_2
    iget-object v1, p0, Lcom/squareup/moshi/BufferedSinkJsonWriter;->sink:Lokio/BufferedSink;

    invoke-interface {v1, p3}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    .line 173
    return-object p0
.end method

.method private newline()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 378
    iget-object v2, p0, Lcom/squareup/moshi/BufferedSinkJsonWriter;->indent:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 386
    :cond_0
    return-void

    .line 382
    :cond_1
    iget-object v2, p0, Lcom/squareup/moshi/BufferedSinkJsonWriter;->sink:Lokio/BufferedSink;

    const/16 v3, 0xa

    invoke-interface {v2, v3}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 383
    const/4 v0, 0x1

    .local v0, "i":I
    iget v1, p0, Lcom/squareup/moshi/BufferedSinkJsonWriter;->stackSize:I

    .local v1, "size":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 384
    iget-object v2, p0, Lcom/squareup/moshi/BufferedSinkJsonWriter;->sink:Lokio/BufferedSink;

    iget-object v3, p0, Lcom/squareup/moshi/BufferedSinkJsonWriter;->indent:Ljava/lang/String;

    invoke-interface {v2, v3}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    .line 383
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private open(ILjava/lang/String;)Lcom/squareup/moshi/JsonWriter;
    .locals 3
    .param p1, "empty"    # I
    .param p2, "openBracket"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/squareup/moshi/BufferedSinkJsonWriter;->beforeValue()V

    .line 146
    iget-object v0, p0, Lcom/squareup/moshi/BufferedSinkJsonWriter;->pathIndices:[I

    iget v1, p0, Lcom/squareup/moshi/BufferedSinkJsonWriter;->stackSize:I

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 147
    invoke-direct {p0, p1}, Lcom/squareup/moshi/BufferedSinkJsonWriter;->push(I)V

    .line 148
    iget-object v0, p0, Lcom/squareup/moshi/BufferedSinkJsonWriter;->sink:Lokio/BufferedSink;

    invoke-interface {v0, p2}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    .line 149
    return-object p0
.end method

.method private peek()I
    .locals 2

    .prologue
    .line 189
    iget v0, p0, Lcom/squareup/moshi/BufferedSinkJsonWriter;->stackSize:I

    if-nez v0, :cond_0

    .line 190
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JsonWriter is closed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/squareup/moshi/BufferedSinkJsonWriter;->stack:[I

    iget v1, p0, Lcom/squareup/moshi/BufferedSinkJsonWriter;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    return v0
.end method

.method private push(I)V
    .locals 4
    .param p1, "newTop"    # I

    .prologue
    const/4 v3, 0x0

    .line 177
    iget v1, p0, Lcom/squareup/moshi/BufferedSinkJsonWriter;->stackSize:I

    iget-object v2, p0, Lcom/squareup/moshi/BufferedSinkJsonWriter;->stack:[I

    array-length v2, v2

    if-ne v1, v2, :cond_0

    .line 178
    iget v1, p0, Lcom/squareup/moshi/BufferedSinkJsonWriter;->stackSize:I

    mul-int/lit8 v1, v1, 0x2

    new-array v0, v1, [I

    .line 179
    .local v0, "newStack":[I
    iget-object v1, p0, Lcom/squareup/moshi/BufferedSinkJsonWriter;->stack:[I

    iget v2, p0, Lcom/squareup/moshi/BufferedSinkJsonWriter;->stackSize:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 180
    iput-object v0, p0, Lcom/squareup/moshi/BufferedSinkJsonWriter;->stack:[I

    .line 182
    .end local v0    # "newStack":[I
    :cond_0
    iget-object v1, p0, Lcom/squareup/moshi/BufferedSinkJsonWriter;->stack:[I

    iget v2, p0, Lcom/squareup/moshi/BufferedSinkJsonWriter;->stackSize:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/squareup/moshi/BufferedSinkJsonWriter;->stackSize:I

    aput p1, v1, v2

    .line 183
    return-void
.end method

.method private replaceTop(I)V
    .locals 2
    .param p1, "topOfStack"    # I

    .prologue
    .line 199
    iget-object v0, p0, Lcom/squareup/moshi/BufferedSinkJsonWriter;->stack:[I

    iget v1, p0, Lcom/squareup/moshi/BufferedSinkJsonWriter;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    aput p1, v0, v1

    .line 200
    return-void
.end method

.method static string(Lokio/BufferedSink;Ljava/lang/String;)V
    .locals 8
    .param p0, "sink"    # Lokio/BufferedSink;
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x22

    .line 346
    sget-object v5, Lcom/squareup/moshi/BufferedSinkJsonWriter;->REPLACEMENT_CHARS:[Ljava/lang/String;

    .line 347
    .local v5, "replacements":[Ljava/lang/String;
    invoke-interface {p0, v7}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 348
    const/4 v2, 0x0

    .line 349
    .local v2, "last":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 350
    .local v3, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_5

    .line 351
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 353
    .local v0, "c":C
    const/16 v6, 0x80

    if-ge v0, v6, :cond_1

    .line 354
    aget-object v4, v5, v0

    .line 355
    .local v4, "replacement":Ljava/lang/String;
    if-nez v4, :cond_2

    .line 350
    .end local v4    # "replacement":Ljava/lang/String;
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 358
    :cond_1
    const/16 v6, 0x2028

    if-ne v0, v6, :cond_4

    .line 359
    const-string v4, "\\u2028"

    .line 365
    .restart local v4    # "replacement":Ljava/lang/String;
    :cond_2
    :goto_2
    if-ge v2, v1, :cond_3

    .line 366
    invoke-interface {p0, p1, v2, v1}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;II)Lokio/BufferedSink;

    .line 368
    :cond_3
    invoke-interface {p0, v4}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    .line 369
    add-int/lit8 v2, v1, 0x1

    goto :goto_1

    .line 360
    .end local v4    # "replacement":Ljava/lang/String;
    :cond_4
    const/16 v6, 0x2029

    if-ne v0, v6, :cond_0

    .line 361
    const-string v4, "\\u2029"

    .restart local v4    # "replacement":Ljava/lang/String;
    goto :goto_2

    .line 371
    .end local v0    # "c":C
    .end local v4    # "replacement":Ljava/lang/String;
    :cond_5
    if-ge v2, v3, :cond_6

    .line 372
    invoke-interface {p0, p1, v2, v3}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;II)Lokio/BufferedSink;

    .line 374
    :cond_6
    invoke-interface {p0, v7}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 375
    return-void
.end method

.method private writeDeferredName()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 219
    iget-object v0, p0, Lcom/squareup/moshi/BufferedSinkJsonWriter;->deferredName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 220
    invoke-direct {p0}, Lcom/squareup/moshi/BufferedSinkJsonWriter;->beforeName()V

    .line 221
    iget-object v0, p0, Lcom/squareup/moshi/BufferedSinkJsonWriter;->sink:Lokio/BufferedSink;

    iget-object v1, p0, Lcom/squareup/moshi/BufferedSinkJsonWriter;->deferredName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/squareup/moshi/BufferedSinkJsonWriter;->string(Lokio/BufferedSink;Ljava/lang/String;)V

    .line 222
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/squareup/moshi/BufferedSinkJsonWriter;->deferredName:Ljava/lang/String;

    .line 224
    :cond_0
    return-void
.end method


# virtual methods
.method public beginArray()Lcom/squareup/moshi/JsonWriter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/squareup/moshi/BufferedSinkJsonWriter;->writeDeferredName()V

    .line 123
    const/4 v0, 0x1

    const-string v1, "["

    invoke-direct {p0, v0, v1}, Lcom/squareup/moshi/BufferedSinkJsonWriter;->open(ILjava/lang/String;)Lcom/squareup/moshi/JsonWriter;

    move-result-object v0

    return-object v0
.end method

.method public beginObject()Lcom/squareup/moshi/JsonWriter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/squareup/moshi/BufferedSinkJsonWriter;->writeDeferredName()V

    .line 132
    const/4 v0, 0x3

    const-string v1, "{"

    invoke-direct {p0, v0, v1}, Lcom/squareup/moshi/BufferedSinkJsonWriter;->open(ILjava/lang/String;)Lcom/squareup/moshi/JsonWriter;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 332
    iget-object v1, p0, Lcom/squareup/moshi/BufferedSinkJsonWriter;->sink:Lokio/BufferedSink;

    invoke-interface {v1}, Lokio/BufferedSink;->close()V

    .line 334
    iget v0, p0, Lcom/squareup/moshi/BufferedSinkJsonWriter;->stackSize:I

    .line 335
    .local v0, "size":I
    if-gt v0, v2, :cond_0

    if-ne v0, v2, :cond_1

    iget-object v1, p0, Lcom/squareup/moshi/BufferedSinkJsonWriter;->stack:[I

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    const/4 v2, 0x7

    if-eq v1, v2, :cond_1

    .line 336
    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Incomplete document"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 338
    :cond_1
    const/4 v1, 0x0

    iput v1, p0, Lcom/squareup/moshi/BufferedSinkJsonWriter;->stackSize:I

    .line 339
    return-void
.end method

.method public endArray()Lcom/squareup/moshi/JsonWriter;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 127
    const/4 v0, 0x1

    const/4 v1, 0x2

    const-string v2, "]"

    invoke-direct {p0, v0, v1, v2}, Lcom/squareup/moshi/BufferedSinkJsonWriter;->close(IILjava/lang/String;)Lcom/squareup/moshi/JsonWriter;

    move-result-object v0

    return-object v0
.end method

.method public endObject()Lcom/squareup/moshi/JsonWriter;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 136
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/squareup/moshi/BufferedSinkJsonWriter;->promoteNameToValue:Z

    .line 137
    const/4 v0, 0x3

    const/4 v1, 0x5

    const-string v2, "}"

    invoke-direct {p0, v0, v1, v2}, Lcom/squareup/moshi/BufferedSinkJsonWriter;->close(IILjava/lang/String;)Lcom/squareup/moshi/JsonWriter;

    move-result-object v0

    return-object v0
.end method

.method public flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 320
    iget v0, p0, Lcom/squareup/moshi/BufferedSinkJsonWriter;->stackSize:I

    if-nez v0, :cond_0

    .line 321
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JsonWriter is closed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/squareup/moshi/BufferedSinkJsonWriter;->sink:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->flush()V

    .line 324
    return-void
.end method

.method public getPath()Ljava/lang/String;
    .locals 4

    .prologue
    .line 450
    iget v0, p0, Lcom/squareup/moshi/BufferedSinkJsonWriter;->stackSize:I

    iget-object v1, p0, Lcom/squareup/moshi/BufferedSinkJsonWriter;->stack:[I

    iget-object v2, p0, Lcom/squareup/moshi/BufferedSinkJsonWriter;->pathNames:[Ljava/lang/String;

    iget-object v3, p0, Lcom/squareup/moshi/BufferedSinkJsonWriter;->pathIndices:[I

    invoke-static {v0, v1, v2, v3}, Lcom/squareup/moshi/JsonScope;->getPath(I[I[Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getSerializeNulls()Z
    .locals 1

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/squareup/moshi/BufferedSinkJsonWriter;->serializeNulls:Z

    return v0
.end method

.method public isLenient()Z
    .locals 1

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/squareup/moshi/BufferedSinkJsonWriter;->lenient:Z

    return v0
.end method

.method public name(Ljava/lang/String;)Lcom/squareup/moshi/JsonWriter;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 203
    if-nez p1, :cond_0

    .line 204
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 206
    :cond_0
    iget v0, p0, Lcom/squareup/moshi/BufferedSinkJsonWriter;->stackSize:I

    if-nez v0, :cond_1

    .line 207
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JsonWriter is closed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 209
    :cond_1
    iget-object v0, p0, Lcom/squareup/moshi/BufferedSinkJsonWriter;->deferredName:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 210
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 212
    :cond_2
    iput-object p1, p0, Lcom/squareup/moshi/BufferedSinkJsonWriter;->deferredName:Ljava/lang/String;

    .line 213
    iget-object v0, p0, Lcom/squareup/moshi/BufferedSinkJsonWriter;->pathNames:[Ljava/lang/String;

    iget v1, p0, Lcom/squareup/moshi/BufferedSinkJsonWriter;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    aput-object p1, v0, v1

    .line 214
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/squareup/moshi/BufferedSinkJsonWriter;->promoteNameToValue:Z

    .line 215
    return-object p0
.end method

.method public nullValue()Lcom/squareup/moshi/JsonWriter;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 241
    iget-object v0, p0, Lcom/squareup/moshi/BufferedSinkJsonWriter;->deferredName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 242
    iget-boolean v0, p0, Lcom/squareup/moshi/BufferedSinkJsonWriter;->serializeNulls:Z

    if-eqz v0, :cond_1

    .line 243
    invoke-direct {p0}, Lcom/squareup/moshi/BufferedSinkJsonWriter;->writeDeferredName()V

    .line 249
    :cond_0
    invoke-direct {p0}, Lcom/squareup/moshi/BufferedSinkJsonWriter;->beforeValue()V

    .line 250
    iget-object v0, p0, Lcom/squareup/moshi/BufferedSinkJsonWriter;->sink:Lokio/BufferedSink;

    const-string v1, "null"

    invoke-interface {v0, v1}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    .line 251
    iget-object v0, p0, Lcom/squareup/moshi/BufferedSinkJsonWriter;->pathIndices:[I

    iget v1, p0, Lcom/squareup/moshi/BufferedSinkJsonWriter;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    .line 252
    :goto_0
    return-object p0

    .line 245
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/squareup/moshi/BufferedSinkJsonWriter;->deferredName:Ljava/lang/String;

    goto :goto_0
.end method

.method promoteNameToValue()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 442
    invoke-direct {p0}, Lcom/squareup/moshi/BufferedSinkJsonWriter;->peek()I

    move-result v0

    .line 443
    .local v0, "context":I
    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 444
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Nesting problem."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 446
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/squareup/moshi/BufferedSinkJsonWriter;->promoteNameToValue:Z

    .line 447
    return-void
.end method

.method public final setIndent(Ljava/lang/String;)V
    .locals 1
    .param p1, "indent"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/squareup/moshi/BufferedSinkJsonWriter;->indent:Ljava/lang/String;

    .line 98
    const-string v0, ":"

    iput-object v0, p0, Lcom/squareup/moshi/BufferedSinkJsonWriter;->separator:Ljava/lang/String;

    .line 103
    :goto_0
    return-void

    .line 100
    :cond_0
    iput-object p1, p0, Lcom/squareup/moshi/BufferedSinkJsonWriter;->indent:Ljava/lang/String;

    .line 101
    const-string v0, ": "

    iput-object v0, p0, Lcom/squareup/moshi/BufferedSinkJsonWriter;->separator:Ljava/lang/String;

    goto :goto_0
.end method

.method public final setLenient(Z)V
    .locals 0
    .param p1, "lenient"    # Z

    .prologue
    .line 106
    iput-boolean p1, p0, Lcom/squareup/moshi/BufferedSinkJsonWriter;->lenient:Z

    .line 107
    return-void
.end method

.method public final setSerializeNulls(Z)V
    .locals 0
    .param p1, "serializeNulls"    # Z

    .prologue
    .line 114
    iput-boolean p1, p0, Lcom/squareup/moshi/BufferedSinkJsonWriter;->serializeNulls:Z

    .line 115
    return-void
.end method

.method public value(D)Lcom/squareup/moshi/JsonWriter;
    .locals 3
    .param p1, "value"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 271
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 272
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Numeric values must be finite, but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 274
    :cond_1
    iget-boolean v0, p0, Lcom/squareup/moshi/BufferedSinkJsonWriter;->promoteNameToValue:Z

    if-eqz v0, :cond_2

    .line 275
    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/squareup/moshi/BufferedSinkJsonWriter;->name(Ljava/lang/String;)Lcom/squareup/moshi/JsonWriter;

    move-result-object p0

    .line 281
    .end local p0    # "this":Lcom/squareup/moshi/BufferedSinkJsonWriter;
    :goto_0
    return-object p0

    .line 277
    .restart local p0    # "this":Lcom/squareup/moshi/BufferedSinkJsonWriter;
    :cond_2
    invoke-direct {p0}, Lcom/squareup/moshi/BufferedSinkJsonWriter;->writeDeferredName()V

    .line 278
    invoke-direct {p0}, Lcom/squareup/moshi/BufferedSinkJsonWriter;->beforeValue()V

    .line 279
    iget-object v0, p0, Lcom/squareup/moshi/BufferedSinkJsonWriter;->sink:Lokio/BufferedSink;

    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    .line 280
    iget-object v0, p0, Lcom/squareup/moshi/BufferedSinkJsonWriter;->pathIndices:[I

    iget v1, p0, Lcom/squareup/moshi/BufferedSinkJsonWriter;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    goto :goto_0
.end method

.method public value(J)Lcom/squareup/moshi/JsonWriter;
    .locals 3
    .param p1, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 285
    iget-boolean v0, p0, Lcom/squareup/moshi/BufferedSinkJsonWriter;->promoteNameToValue:Z

    if-eqz v0, :cond_0

    .line 286
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/squareup/moshi/BufferedSinkJsonWriter;->name(Ljava/lang/String;)Lcom/squareup/moshi/JsonWriter;

    move-result-object p0

    .line 292
    .end local p0    # "this":Lcom/squareup/moshi/BufferedSinkJsonWriter;
    :goto_0
    return-object p0

    .line 288
    .restart local p0    # "this":Lcom/squareup/moshi/BufferedSinkJsonWriter;
    :cond_0
    invoke-direct {p0}, Lcom/squareup/moshi/BufferedSinkJsonWriter;->writeDeferredName()V

    .line 289
    invoke-direct {p0}, Lcom/squareup/moshi/BufferedSinkJsonWriter;->beforeValue()V

    .line 290
    iget-object v0, p0, Lcom/squareup/moshi/BufferedSinkJsonWriter;->sink:Lokio/BufferedSink;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    .line 291
    iget-object v0, p0, Lcom/squareup/moshi/BufferedSinkJsonWriter;->pathIndices:[I

    iget v1, p0, Lcom/squareup/moshi/BufferedSinkJsonWriter;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    goto :goto_0
.end method

.method public value(Ljava/lang/Boolean;)Lcom/squareup/moshi/JsonWriter;
    .locals 1
    .param p1, "value"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 264
    if-nez p1, :cond_0

    .line 265
    invoke-virtual {p0}, Lcom/squareup/moshi/BufferedSinkJsonWriter;->nullValue()Lcom/squareup/moshi/JsonWriter;

    move-result-object v0

    .line 267
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/squareup/moshi/BufferedSinkJsonWriter;->value(Z)Lcom/squareup/moshi/JsonWriter;

    move-result-object v0

    goto :goto_0
.end method

.method public value(Ljava/lang/Number;)Lcom/squareup/moshi/JsonWriter;
    .locals 4
    .param p1, "value"    # Ljava/lang/Number;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 296
    if-nez p1, :cond_0

    .line 297
    invoke-virtual {p0}, Lcom/squareup/moshi/BufferedSinkJsonWriter;->nullValue()Lcom/squareup/moshi/JsonWriter;

    move-result-object p0

    .line 312
    .end local p0    # "this":Lcom/squareup/moshi/BufferedSinkJsonWriter;
    :goto_0
    return-object p0

    .line 300
    .restart local p0    # "this":Lcom/squareup/moshi/BufferedSinkJsonWriter;
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 301
    .local v0, "string":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/squareup/moshi/BufferedSinkJsonWriter;->lenient:Z

    if-nez v1, :cond_2

    const-string v1, "-Infinity"

    .line 302
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "Infinity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "NaN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 303
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Numeric values must be finite, but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 305
    :cond_2
    iget-boolean v1, p0, Lcom/squareup/moshi/BufferedSinkJsonWriter;->promoteNameToValue:Z

    if-eqz v1, :cond_3

    .line 306
    invoke-virtual {p0, v0}, Lcom/squareup/moshi/BufferedSinkJsonWriter;->name(Ljava/lang/String;)Lcom/squareup/moshi/JsonWriter;

    move-result-object p0

    goto :goto_0

    .line 308
    :cond_3
    invoke-direct {p0}, Lcom/squareup/moshi/BufferedSinkJsonWriter;->writeDeferredName()V

    .line 309
    invoke-direct {p0}, Lcom/squareup/moshi/BufferedSinkJsonWriter;->beforeValue()V

    .line 310
    iget-object v1, p0, Lcom/squareup/moshi/BufferedSinkJsonWriter;->sink:Lokio/BufferedSink;

    invoke-interface {v1, v0}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    .line 311
    iget-object v1, p0, Lcom/squareup/moshi/BufferedSinkJsonWriter;->pathIndices:[I

    iget v2, p0, Lcom/squareup/moshi/BufferedSinkJsonWriter;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    goto :goto_0
.end method

.method public value(Ljava/lang/String;)Lcom/squareup/moshi/JsonWriter;
    .locals 3
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 227
    if-nez p1, :cond_0

    .line 228
    invoke-virtual {p0}, Lcom/squareup/moshi/BufferedSinkJsonWriter;->nullValue()Lcom/squareup/moshi/JsonWriter;

    move-result-object p0

    .line 237
    .end local p0    # "this":Lcom/squareup/moshi/BufferedSinkJsonWriter;
    :goto_0
    return-object p0

    .line 230
    .restart local p0    # "this":Lcom/squareup/moshi/BufferedSinkJsonWriter;
    :cond_0
    iget-boolean v0, p0, Lcom/squareup/moshi/BufferedSinkJsonWriter;->promoteNameToValue:Z

    if-eqz v0, :cond_1

    .line 231
    invoke-virtual {p0, p1}, Lcom/squareup/moshi/BufferedSinkJsonWriter;->name(Ljava/lang/String;)Lcom/squareup/moshi/JsonWriter;

    move-result-object p0

    goto :goto_0

    .line 233
    :cond_1
    invoke-direct {p0}, Lcom/squareup/moshi/BufferedSinkJsonWriter;->writeDeferredName()V

    .line 234
    invoke-direct {p0}, Lcom/squareup/moshi/BufferedSinkJsonWriter;->beforeValue()V

    .line 235
    iget-object v0, p0, Lcom/squareup/moshi/BufferedSinkJsonWriter;->sink:Lokio/BufferedSink;

    invoke-static {v0, p1}, Lcom/squareup/moshi/BufferedSinkJsonWriter;->string(Lokio/BufferedSink;Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lcom/squareup/moshi/BufferedSinkJsonWriter;->pathIndices:[I

    iget v1, p0, Lcom/squareup/moshi/BufferedSinkJsonWriter;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    goto :goto_0
.end method

.method public value(Z)Lcom/squareup/moshi/JsonWriter;
    .locals 3
    .param p1, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 256
    invoke-direct {p0}, Lcom/squareup/moshi/BufferedSinkJsonWriter;->writeDeferredName()V

    .line 257
    invoke-direct {p0}, Lcom/squareup/moshi/BufferedSinkJsonWriter;->beforeValue()V

    .line 258
    iget-object v1, p0, Lcom/squareup/moshi/BufferedSinkJsonWriter;->sink:Lokio/BufferedSink;

    if-eqz p1, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-interface {v1, v0}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    .line 259
    iget-object v0, p0, Lcom/squareup/moshi/BufferedSinkJsonWriter;->pathIndices:[I

    iget v1, p0, Lcom/squareup/moshi/BufferedSinkJsonWriter;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    .line 260
    return-object p0

    .line 258
    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

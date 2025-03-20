.class public Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;
.super Ljava/lang/Object;
.source "SimpleCharStream.java"


# static fields
.field public static final staticFlag:Z


# instance fields
.field available:I

.field protected bufcolumn:[I

.field protected buffer:[C

.field protected bufline:[I

.field public bufpos:I

.field bufsize:I

.field protected column:I

.field protected inBuf:I

.field protected inputStream:Ljava/io/Reader;

.field protected line:I

.field protected maxNextCharInd:I

.field protected prevCharIsCR:Z

.field protected prevCharIsLF:Z

.field protected tabSize:I

.field tokenBegin:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "dstream"    # Ljava/io/InputStream;

    .prologue
    const/4 v1, 0x1

    .line 366
    const/16 v0, 0x1000

    invoke-direct {p0, p1, v1, v1, v0}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;-><init>(Ljava/io/InputStream;III)V

    .line 367
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;II)V
    .locals 1
    .param p1, "dstream"    # Ljava/io/InputStream;
    .param p2, "startline"    # I
    .param p3, "startcolumn"    # I

    .prologue
    .line 354
    const/16 v0, 0x1000

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;-><init>(Ljava/io/InputStream;III)V

    .line 355
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;III)V
    .locals 1
    .param p1, "dstream"    # Ljava/io/InputStream;
    .param p2, "startline"    # I
    .param p3, "startcolumn"    # I
    .param p4, "buffersize"    # I

    .prologue
    .line 340
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v0, p2, p3, p4}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;-><init>(Ljava/io/Reader;III)V

    .line 341
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 6
    .param p1, "dstream"    # Ljava/io/InputStream;
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 360
    const/16 v5, 0x1000

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;III)V

    .line 361
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;II)V
    .locals 6
    .param p1, "dstream"    # Ljava/io/InputStream;
    .param p2, "encoding"    # Ljava/lang/String;
    .param p3, "startline"    # I
    .param p4, "startcolumn"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 347
    const/16 v5, 0x1000

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;III)V

    .line 348
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;III)V
    .locals 1
    .param p1, "dstream"    # Ljava/io/InputStream;
    .param p2, "encoding"    # Ljava/lang/String;
    .param p3, "startline"    # I
    .param p4, "startcolumn"    # I
    .param p5, "buffersize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 333
    if-nez p2, :cond_0

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    :goto_0
    invoke-direct {p0, v0, p3, p4, p5}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;-><init>(Ljava/io/Reader;III)V

    .line 334
    return-void

    .line 333
    :cond_0
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 2
    .param p1, "dstream"    # Ljava/io/Reader;

    .prologue
    const/4 v1, 0x1

    .line 294
    const/16 v0, 0x1000

    invoke-direct {p0, p1, v1, v1, v0}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;-><init>(Ljava/io/Reader;III)V

    .line 295
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;II)V
    .locals 1
    .param p1, "dstream"    # Ljava/io/Reader;
    .param p2, "startline"    # I
    .param p3, "startcolumn"    # I

    .prologue
    .line 288
    const/16 v0, 0x1000

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;-><init>(Ljava/io/Reader;III)V

    .line 289
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;III)V
    .locals 2
    .param p1, "dstream"    # Ljava/io/Reader;
    .param p2, "startline"    # I
    .param p3, "startcolumn"    # I
    .param p4, "buffersize"    # I

    .prologue
    const/4 v1, 0x0

    .line 273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufpos:I

    .line 40
    iput v1, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->column:I

    .line 41
    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->line:I

    .line 43
    iput-boolean v1, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->prevCharIsCR:Z

    .line 44
    iput-boolean v1, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->prevCharIsLF:Z

    .line 49
    iput v1, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->maxNextCharInd:I

    .line 50
    iput v1, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->inBuf:I

    .line 51
    const/16 v0, 0x8

    iput v0, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->tabSize:I

    .line 274
    iput-object p1, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->inputStream:Ljava/io/Reader;

    .line 275
    iput p2, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->line:I

    .line 276
    add-int/lit8 v0, p3, -0x1

    iput v0, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->column:I

    .line 278
    iput p4, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufsize:I

    iput p4, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->available:I

    .line 279
    new-array v0, p4, [C

    iput-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->buffer:[C

    .line 280
    new-array v0, p4, [I

    iput-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufline:[I

    .line 281
    new-array v0, p4, [I

    iput-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufcolumn:[I

    .line 282
    return-void
.end method


# virtual methods
.method public BeginToken()C
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 153
    const/4 v1, -0x1

    iput v1, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->tokenBegin:I

    .line 154
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->readChar()C

    move-result v0

    .line 155
    .local v0, "c":C
    iget v1, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufpos:I

    iput v1, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->tokenBegin:I

    .line 157
    return v0
.end method

.method public Done()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 436
    iput-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->buffer:[C

    .line 437
    iput-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufline:[I

    .line 438
    iput-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufcolumn:[I

    .line 439
    return-void
.end method

.method protected ExpandBuff(Z)V
    .locals 10
    .param p1, "wrapAround"    # Z

    .prologue
    const/4 v9, 0x0

    .line 59
    iget v4, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufsize:I

    add-int/lit16 v4, v4, 0x800

    new-array v1, v4, [C

    .line 60
    .local v1, "newbuffer":[C
    iget v4, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufsize:I

    add-int/lit16 v4, v4, 0x800

    new-array v2, v4, [I

    .line 61
    .local v2, "newbufline":[I
    iget v4, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufsize:I

    add-int/lit16 v4, v4, 0x800

    new-array v0, v4, [I

    .line 65
    .local v0, "newbufcolumn":[I
    if-eqz p1, :cond_0

    .line 67
    :try_start_0
    iget-object v4, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->buffer:[C

    iget v5, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->tokenBegin:I

    const/4 v6, 0x0

    iget v7, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufsize:I

    iget v8, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v7, v8

    invoke-static {v4, v5, v1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 68
    iget-object v4, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->buffer:[C

    const/4 v5, 0x0

    iget v6, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufsize:I

    iget v7, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v6, v7

    iget v7, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufpos:I

    invoke-static {v4, v5, v1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 69
    iput-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->buffer:[C

    .line 71
    iget-object v4, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufline:[I

    iget v5, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->tokenBegin:I

    const/4 v6, 0x0

    iget v7, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufsize:I

    iget v8, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v7, v8

    invoke-static {v4, v5, v2, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 72
    iget-object v4, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufline:[I

    const/4 v5, 0x0

    iget v6, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufsize:I

    iget v7, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v6, v7

    iget v7, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufpos:I

    invoke-static {v4, v5, v2, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 73
    iput-object v2, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufline:[I

    .line 75
    iget-object v4, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufcolumn:[I

    iget v5, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->tokenBegin:I

    const/4 v6, 0x0

    iget v7, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufsize:I

    iget v8, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v7, v8

    invoke-static {v4, v5, v0, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 76
    iget-object v4, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufcolumn:[I

    const/4 v5, 0x0

    iget v6, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufsize:I

    iget v7, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v6, v7

    iget v7, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufpos:I

    invoke-static {v4, v5, v0, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 77
    iput-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufcolumn:[I

    .line 79
    iget v4, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufpos:I

    iget v5, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufsize:I

    iget v6, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v5, v6

    add-int/2addr v4, v5

    iput v4, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufpos:I

    iput v4, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->maxNextCharInd:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :goto_0
    iget v4, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufsize:I

    add-int/lit16 v4, v4, 0x800

    iput v4, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufsize:I

    .line 102
    iget v4, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufsize:I

    iput v4, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->available:I

    .line 103
    iput v9, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->tokenBegin:I

    .line 104
    return-void

    .line 83
    :cond_0
    :try_start_1
    iget-object v4, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->buffer:[C

    iget v5, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->tokenBegin:I

    const/4 v6, 0x0

    iget v7, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufsize:I

    iget v8, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v7, v8

    invoke-static {v4, v5, v1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 84
    iput-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->buffer:[C

    .line 86
    iget-object v4, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufline:[I

    iget v5, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->tokenBegin:I

    const/4 v6, 0x0

    iget v7, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufsize:I

    iget v8, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v7, v8

    invoke-static {v4, v5, v2, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 87
    iput-object v2, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufline:[I

    .line 89
    iget-object v4, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufcolumn:[I

    iget v5, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->tokenBegin:I

    const/4 v6, 0x0

    iget v7, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufsize:I

    iget v8, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v7, v8

    invoke-static {v4, v5, v0, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 90
    iput-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufcolumn:[I

    .line 92
    iget v4, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufpos:I

    iget v5, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v4, v5

    iput v4, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufpos:I

    iput v4, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->maxNextCharInd:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 95
    :catch_0
    move-exception v3

    .line 97
    .local v3, "t":Ljava/lang/Throwable;
    new-instance v4, Ljava/lang/Error;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method protected FillBuff()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x800

    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 108
    iget v2, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->maxNextCharInd:I

    iget v3, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->available:I

    if-ne v2, v3, :cond_0

    .line 110
    iget v2, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->available:I

    iget v3, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufsize:I

    if-ne v2, v3, :cond_4

    .line 112
    iget v2, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->tokenBegin:I

    if-le v2, v4, :cond_2

    .line 114
    iput v7, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->maxNextCharInd:I

    iput v7, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufpos:I

    .line 115
    iget v2, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->tokenBegin:I

    iput v2, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->available:I

    .line 132
    :cond_0
    :goto_0
    :try_start_0
    iget-object v2, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->inputStream:Ljava/io/Reader;

    iget-object v3, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->buffer:[C

    iget v4, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->maxNextCharInd:I

    iget v5, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->available:I

    iget v6, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->maxNextCharInd:I

    sub-int/2addr v5, v6

    invoke-virtual {v2, v3, v4, v5}, Ljava/io/Reader;->read([CII)I

    move-result v1

    .local v1, "i":I
    if-ne v1, v8, :cond_7

    .line 134
    iget-object v2, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->inputStream:Ljava/io/Reader;

    invoke-virtual {v2}, Ljava/io/Reader;->close()V

    .line 135
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    .end local v1    # "i":I
    :catch_0
    move-exception v0

    .line 142
    .local v0, "e":Ljava/io/IOException;
    iget v2, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufpos:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufpos:I

    .line 143
    invoke-virtual {p0, v7}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->backup(I)V

    .line 144
    iget v2, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->tokenBegin:I

    if-ne v2, v8, :cond_1

    .line 145
    iget v2, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufpos:I

    iput v2, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->tokenBegin:I

    .line 146
    :cond_1
    throw v0

    .line 117
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2
    iget v2, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->tokenBegin:I

    if-gez v2, :cond_3

    .line 118
    iput v7, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->maxNextCharInd:I

    iput v7, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufpos:I

    goto :goto_0

    .line 120
    :cond_3
    invoke-virtual {p0, v7}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->ExpandBuff(Z)V

    goto :goto_0

    .line 122
    :cond_4
    iget v2, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->available:I

    iget v3, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->tokenBegin:I

    if-le v2, v3, :cond_5

    .line 123
    iget v2, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufsize:I

    iput v2, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->available:I

    goto :goto_0

    .line 124
    :cond_5
    iget v2, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->tokenBegin:I

    iget v3, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->available:I

    sub-int/2addr v2, v3

    if-ge v2, v4, :cond_6

    .line 125
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->ExpandBuff(Z)V

    goto :goto_0

    .line 127
    :cond_6
    iget v2, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->tokenBegin:I

    iput v2, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->available:I

    goto :goto_0

    .line 138
    .restart local v1    # "i":I
    :cond_7
    :try_start_1
    iget v2, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->maxNextCharInd:I

    add-int/2addr v2, v1

    iput v2, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->maxNextCharInd:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 139
    return-void
.end method

.method public GetImage()Ljava/lang/String;
    .locals 6

    .prologue
    .line 409
    iget v0, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufpos:I

    iget v1, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->tokenBegin:I

    if-lt v0, v1, :cond_0

    .line 410
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->buffer:[C

    iget v2, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->tokenBegin:I

    iget v3, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufpos:I

    iget v4, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    .line 412
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->buffer:[C

    iget v3, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->tokenBegin:I

    iget v4, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufsize:I

    iget v5, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v4, v5

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->buffer:[C

    const/4 v3, 0x0

    iget v4, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufpos:I

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public GetSuffix(I)[C
    .locals 5
    .param p1, "len"    # I

    .prologue
    const/4 v4, 0x0

    .line 419
    new-array v0, p1, [C

    .line 421
    .local v0, "ret":[C
    iget v1, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufpos:I

    add-int/lit8 v1, v1, 0x1

    if-lt v1, p1, :cond_0

    .line 422
    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->buffer:[C

    iget v2, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufpos:I

    sub-int/2addr v2, p1

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2, v0, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 430
    :goto_0
    return-object v0

    .line 425
    :cond_0
    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->buffer:[C

    iget v2, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufsize:I

    iget v3, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufpos:I

    sub-int v3, p1, v3

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v2, v3

    iget v3, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufpos:I

    sub-int v3, p1, v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v1, v2, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 427
    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->buffer:[C

    iget v2, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufpos:I

    sub-int v2, p1, v2

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufpos:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v1, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public ReInit(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "dstream"    # Ljava/io/InputStream;

    .prologue
    const/4 v1, 0x1

    .line 392
    const/16 v0, 0x1000

    invoke-virtual {p0, p1, v1, v1, v0}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->ReInit(Ljava/io/InputStream;III)V

    .line 393
    return-void
.end method

.method public ReInit(Ljava/io/InputStream;II)V
    .locals 1
    .param p1, "dstream"    # Ljava/io/InputStream;
    .param p2, "startline"    # I
    .param p3, "startcolumn"    # I

    .prologue
    .line 404
    const/16 v0, 0x1000

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->ReInit(Ljava/io/InputStream;III)V

    .line 405
    return-void
.end method

.method public ReInit(Ljava/io/InputStream;III)V
    .locals 1
    .param p1, "dstream"    # Ljava/io/InputStream;
    .param p2, "startline"    # I
    .param p3, "startcolumn"    # I
    .param p4, "buffersize"    # I

    .prologue
    .line 380
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0, v0, p2, p3, p4}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->ReInit(Ljava/io/Reader;III)V

    .line 381
    return-void
.end method

.method public ReInit(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 6
    .param p1, "dstream"    # Ljava/io/InputStream;
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 386
    const/16 v5, 0x1000

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->ReInit(Ljava/io/InputStream;Ljava/lang/String;III)V

    .line 387
    return-void
.end method

.method public ReInit(Ljava/io/InputStream;Ljava/lang/String;II)V
    .locals 6
    .param p1, "dstream"    # Ljava/io/InputStream;
    .param p2, "encoding"    # Ljava/lang/String;
    .param p3, "startline"    # I
    .param p4, "startcolumn"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 398
    const/16 v5, 0x1000

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->ReInit(Ljava/io/InputStream;Ljava/lang/String;III)V

    .line 399
    return-void
.end method

.method public ReInit(Ljava/io/InputStream;Ljava/lang/String;III)V
    .locals 1
    .param p1, "dstream"    # Ljava/io/InputStream;
    .param p2, "encoding"    # Ljava/lang/String;
    .param p3, "startline"    # I
    .param p4, "startcolumn"    # I
    .param p5, "buffersize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 373
    if-nez p2, :cond_0

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    :goto_0
    invoke-virtual {p0, v0, p3, p4, p5}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->ReInit(Ljava/io/Reader;III)V

    .line 374
    return-void

    .line 373
    :cond_0
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public ReInit(Ljava/io/Reader;)V
    .locals 2
    .param p1, "dstream"    # Ljava/io/Reader;

    .prologue
    const/4 v1, 0x1

    .line 327
    const/16 v0, 0x1000

    invoke-virtual {p0, p1, v1, v1, v0}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->ReInit(Ljava/io/Reader;III)V

    .line 328
    return-void
.end method

.method public ReInit(Ljava/io/Reader;II)V
    .locals 1
    .param p1, "dstream"    # Ljava/io/Reader;
    .param p2, "startline"    # I
    .param p3, "startcolumn"    # I

    .prologue
    .line 321
    const/16 v0, 0x1000

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->ReInit(Ljava/io/Reader;III)V

    .line 322
    return-void
.end method

.method public ReInit(Ljava/io/Reader;III)V
    .locals 2
    .param p1, "dstream"    # Ljava/io/Reader;
    .param p2, "startline"    # I
    .param p3, "startcolumn"    # I
    .param p4, "buffersize"    # I

    .prologue
    const/4 v1, 0x0

    .line 301
    iput-object p1, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->inputStream:Ljava/io/Reader;

    .line 302
    iput p2, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->line:I

    .line 303
    add-int/lit8 v0, p3, -0x1

    iput v0, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->column:I

    .line 305
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->buffer:[C

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->buffer:[C

    array-length v0, v0

    if-eq p4, v0, :cond_1

    .line 307
    :cond_0
    iput p4, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufsize:I

    iput p4, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->available:I

    .line 308
    new-array v0, p4, [C

    iput-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->buffer:[C

    .line 309
    new-array v0, p4, [I

    iput-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufline:[I

    .line 310
    new-array v0, p4, [I

    iput-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufcolumn:[I

    .line 312
    :cond_1
    iput-boolean v1, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->prevCharIsCR:Z

    iput-boolean v1, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->prevCharIsLF:Z

    .line 313
    iput v1, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->maxNextCharInd:I

    iput v1, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->inBuf:I

    iput v1, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->tokenBegin:I

    .line 314
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufpos:I

    .line 315
    return-void
.end method

.method protected UpdateLineColumn(C)V
    .locals 4
    .param p1, "c"    # C

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 162
    iget v0, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->column:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->column:I

    .line 164
    iget-boolean v0, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->prevCharIsLF:Z

    if-eqz v0, :cond_1

    .line 166
    iput-boolean v2, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->prevCharIsLF:Z

    .line 167
    iget v0, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->line:I

    iput v1, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->column:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->line:I

    .line 180
    :cond_0
    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 196
    :goto_1
    :pswitch_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufline:[I

    iget v1, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufpos:I

    iget v2, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->line:I

    aput v2, v0, v1

    .line 197
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufcolumn:[I

    iget v1, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufpos:I

    iget v2, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->column:I

    aput v2, v0, v1

    .line 198
    return-void

    .line 169
    :cond_1
    iget-boolean v0, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->prevCharIsCR:Z

    if-eqz v0, :cond_0

    .line 171
    iput-boolean v2, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->prevCharIsCR:Z

    .line 172
    const/16 v0, 0xa

    if-ne p1, v0, :cond_2

    .line 174
    iput-boolean v1, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->prevCharIsLF:Z

    goto :goto_0

    .line 177
    :cond_2
    iget v0, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->line:I

    iput v1, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->column:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->line:I

    goto :goto_0

    .line 183
    :pswitch_1
    iput-boolean v1, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->prevCharIsCR:Z

    goto :goto_1

    .line 186
    :pswitch_2
    iput-boolean v1, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->prevCharIsLF:Z

    goto :goto_1

    .line 189
    :pswitch_3
    iget v0, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->column:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->column:I

    .line 190
    iget v0, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->column:I

    iget v1, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->tabSize:I

    iget v2, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->column:I

    iget v3, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->tabSize:I

    rem-int/2addr v2, v3

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->column:I

    goto :goto_1

    .line 180
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public adjustBeginLineColumn(II)V
    .locals 12
    .param p1, "newLine"    # I
    .param p2, "newCol"    # I

    .prologue
    .line 446
    iget v8, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->tokenBegin:I

    .line 449
    .local v8, "start":I
    iget v9, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufpos:I

    iget v10, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->tokenBegin:I

    if-lt v9, v10, :cond_0

    .line 451
    iget v9, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufpos:I

    iget v10, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v9, v10

    iget v10, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->inBuf:I

    add-int/2addr v9, v10

    add-int/lit8 v5, v9, 0x1

    .line 458
    .local v5, "len":I
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    const/4 v3, 0x0

    .local v3, "j":I
    const/4 v4, 0x0

    .line 459
    .local v4, "k":I
    const/4 v7, 0x0

    .local v7, "nextColDiff":I
    const/4 v0, 0x0

    .line 461
    .local v0, "columnDiff":I
    :goto_1
    if-ge v1, v5, :cond_1

    iget-object v9, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufline:[I

    iget v10, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufsize:I

    rem-int v3, v8, v10

    aget v9, v9, v3

    iget-object v10, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufline:[I

    add-int/lit8 v8, v8, 0x1

    iget v11, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufsize:I

    rem-int v4, v8, v11

    aget v10, v10, v4

    if-ne v9, v10, :cond_1

    .line 463
    iget-object v9, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufline:[I

    aput p1, v9, v3

    .line 464
    iget-object v9, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufcolumn:[I

    aget v9, v9, v4

    add-int/2addr v9, v0

    iget-object v10, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufcolumn:[I

    aget v10, v10, v3

    sub-int v7, v9, v10

    .line 465
    iget-object v9, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufcolumn:[I

    add-int v10, p2, v0

    aput v10, v9, v3

    .line 466
    move v0, v7

    .line 467
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 455
    .end local v0    # "columnDiff":I
    .end local v1    # "i":I
    .end local v3    # "j":I
    .end local v4    # "k":I
    .end local v5    # "len":I
    .end local v7    # "nextColDiff":I
    :cond_0
    iget v9, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufsize:I

    iget v10, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v9, v10

    iget v10, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufpos:I

    add-int/2addr v9, v10

    add-int/lit8 v9, v9, 0x1

    iget v10, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->inBuf:I

    add-int v5, v9, v10

    .restart local v5    # "len":I
    goto :goto_0

    .line 470
    .restart local v0    # "columnDiff":I
    .restart local v1    # "i":I
    .restart local v3    # "j":I
    .restart local v4    # "k":I
    .restart local v7    # "nextColDiff":I
    :cond_1
    if-ge v1, v5, :cond_4

    .line 472
    iget-object v9, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufline:[I

    add-int/lit8 v6, p1, 0x1

    .end local p1    # "newLine":I
    .local v6, "newLine":I
    aput p1, v9, v3

    .line 473
    iget-object v9, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufcolumn:[I

    add-int v10, p2, v0

    aput v10, v9, v3

    move v2, v1

    .line 475
    .end local v1    # "i":I
    .local v2, "i":I
    :goto_2
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    if-ge v2, v5, :cond_3

    .line 477
    iget-object v9, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufline:[I

    iget v10, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufsize:I

    rem-int v3, v8, v10

    aget v9, v9, v3

    iget-object v10, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufline:[I

    add-int/lit8 v8, v8, 0x1

    iget v11, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufsize:I

    rem-int v11, v8, v11

    aget v10, v10, v11

    if-eq v9, v10, :cond_2

    .line 478
    iget-object v9, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufline:[I

    add-int/lit8 p1, v6, 0x1

    .end local v6    # "newLine":I
    .restart local p1    # "newLine":I
    aput v6, v9, v3

    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    move v6, p1

    .end local p1    # "newLine":I
    .restart local v6    # "newLine":I
    goto :goto_2

    .line 480
    .end local v2    # "i":I
    .restart local v1    # "i":I
    :cond_2
    iget-object v9, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufline:[I

    aput v6, v9, v3

    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    :cond_3
    move p1, v6

    .line 484
    .end local v6    # "newLine":I
    .restart local p1    # "newLine":I
    :cond_4
    iget-object v9, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufline:[I

    aget v9, v9, v3

    iput v9, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->line:I

    .line 485
    iget-object v9, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufcolumn:[I

    aget v9, v9, v3

    iput v9, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->column:I

    .line 486
    return-void
.end method

.method public backup(I)V
    .locals 2
    .param p1, "amount"    # I

    .prologue
    .line 265
    iget v0, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->inBuf:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->inBuf:I

    .line 266
    iget v0, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufpos:I

    sub-int/2addr v0, p1

    iput v0, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufpos:I

    if-gez v0, :cond_0

    .line 267
    iget v0, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufpos:I

    iget v1, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufsize:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufpos:I

    .line 268
    :cond_0
    return-void
.end method

.method public getBeginColumn()I
    .locals 2

    .prologue
    .line 254
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufcolumn:[I

    iget v1, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->tokenBegin:I

    aget v0, v0, v1

    return v0
.end method

.method public getBeginLine()I
    .locals 2

    .prologue
    .line 259
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufline:[I

    iget v1, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->tokenBegin:I

    aget v0, v0, v1

    return v0
.end method

.method public getColumn()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 229
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufcolumn:[I

    iget v1, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufpos:I

    aget v0, v0, v1

    return v0
.end method

.method public getEndColumn()I
    .locals 2

    .prologue
    .line 244
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufcolumn:[I

    iget v1, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufpos:I

    aget v0, v0, v1

    return v0
.end method

.method public getEndLine()I
    .locals 2

    .prologue
    .line 249
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufline:[I

    iget v1, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufpos:I

    aget v0, v0, v1

    return v0
.end method

.method public getLine()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 239
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufline:[I

    iget v1, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufpos:I

    aget v0, v0, v1

    return v0
.end method

.method protected getTabSize(I)I
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 54
    iget v0, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->tabSize:I

    return v0
.end method

.method public readChar()C
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 203
    iget v1, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->inBuf:I

    if-lez v1, :cond_1

    .line 205
    iget v1, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->inBuf:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->inBuf:I

    .line 207
    iget v1, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufpos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufpos:I

    iget v2, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufsize:I

    if-ne v1, v2, :cond_0

    .line 208
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufpos:I

    .line 210
    :cond_0
    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->buffer:[C

    iget v2, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufpos:I

    aget-char v0, v1, v2

    .line 219
    :goto_0
    return v0

    .line 213
    :cond_1
    iget v1, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufpos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufpos:I

    iget v2, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->maxNextCharInd:I

    if-lt v1, v2, :cond_2

    .line 214
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->FillBuff()V

    .line 216
    :cond_2
    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->buffer:[C

    iget v2, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->bufpos:I

    aget-char v0, v1, v2

    .line 218
    .local v0, "c":C
    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->UpdateLineColumn(C)V

    goto :goto_0
.end method

.method protected setTabSize(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 53
    iput p1, p0, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->tabSize:I

    return-void
.end method

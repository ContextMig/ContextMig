.class public Lcom/mobapphome/mahencryptorlib/Base64$Encoder;
.super Ljava/lang/Object;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobapphome/mahencryptorlib/Base64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Encoder"
.end annotation


# static fields
.field private static final CRLF:[B

.field private static final MIMELINEMAX:I = 0x4c

.field static final RFC2045:Lcom/mobapphome/mahencryptorlib/Base64$Encoder;

.field static final RFC4648:Lcom/mobapphome/mahencryptorlib/Base64$Encoder;

.field static final RFC4648_URLSAFE:Lcom/mobapphome/mahencryptorlib/Base64$Encoder;

.field private static final toBase64:[C

.field private static final toBase64URL:[C


# instance fields
.field private final doPadding:Z

.field private final isURL:Z

.field private final linemax:I

.field private final newline:[B


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0x40

    .line 215
    new-array v1, v0, [C

    fill-array-data v1, :array_0

    sput-object v1, Lcom/mobapphome/mahencryptorlib/Base64$Encoder;->toBase64:[C

    .line 228
    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/mobapphome/mahencryptorlib/Base64$Encoder;->toBase64URL:[C

    const/4 v0, 0x2

    .line 237
    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/mobapphome/mahencryptorlib/Base64$Encoder;->CRLF:[B

    .line 239
    new-instance v0, Lcom/mobapphome/mahencryptorlib/Base64$Encoder;

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, v3, v2, v1, v4}, Lcom/mobapphome/mahencryptorlib/Base64$Encoder;-><init>(Z[BIZ)V

    sput-object v0, Lcom/mobapphome/mahencryptorlib/Base64$Encoder;->RFC4648:Lcom/mobapphome/mahencryptorlib/Base64$Encoder;

    .line 240
    new-instance v0, Lcom/mobapphome/mahencryptorlib/Base64$Encoder;

    invoke-direct {v0, v4, v2, v1, v4}, Lcom/mobapphome/mahencryptorlib/Base64$Encoder;-><init>(Z[BIZ)V

    sput-object v0, Lcom/mobapphome/mahencryptorlib/Base64$Encoder;->RFC4648_URLSAFE:Lcom/mobapphome/mahencryptorlib/Base64$Encoder;

    .line 241
    new-instance v0, Lcom/mobapphome/mahencryptorlib/Base64$Encoder;

    sget-object v1, Lcom/mobapphome/mahencryptorlib/Base64$Encoder;->CRLF:[B

    const/16 v2, 0x4c

    invoke-direct {v0, v3, v1, v2, v4}, Lcom/mobapphome/mahencryptorlib/Base64$Encoder;-><init>(Z[BIZ)V

    sput-object v0, Lcom/mobapphome/mahencryptorlib/Base64$Encoder;->RFC2045:Lcom/mobapphome/mahencryptorlib/Base64$Encoder;

    return-void

    :array_0
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x2bs
        0x2fs
    .end array-data

    :array_1
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x2ds
        0x5fs
    .end array-data

    :array_2
    .array-data 1
        0xdt
        0xat
    .end array-data
.end method

.method private constructor <init>(Z[BIZ)V
    .locals 0

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    iput-boolean p1, p0, Lcom/mobapphome/mahencryptorlib/Base64$Encoder;->isURL:Z

    .line 205
    iput-object p2, p0, Lcom/mobapphome/mahencryptorlib/Base64$Encoder;->newline:[B

    .line 206
    iput p3, p0, Lcom/mobapphome/mahencryptorlib/Base64$Encoder;->linemax:I

    .line 207
    iput-boolean p4, p0, Lcom/mobapphome/mahencryptorlib/Base64$Encoder;->doPadding:Z

    return-void
.end method

.method synthetic constructor <init>(Z[BIZLcom/mobapphome/mahencryptorlib/Base64$1;)V
    .locals 0

    .line 196
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mobapphome/mahencryptorlib/Base64$Encoder;-><init>(Z[BIZ)V

    return-void
.end method

.method static synthetic access$200()[C
    .locals 1

    .line 196
    sget-object v0, Lcom/mobapphome/mahencryptorlib/Base64$Encoder;->toBase64:[C

    return-object v0
.end method

.method static synthetic access$300()[C
    .locals 1

    .line 196
    sget-object v0, Lcom/mobapphome/mahencryptorlib/Base64$Encoder;->toBase64URL:[C

    return-object v0
.end method

.method private encode0([BII[B)I
    .locals 11

    .line 398
    iget-boolean v0, p0, Lcom/mobapphome/mahencryptorlib/Base64$Encoder;->isURL:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/mobapphome/mahencryptorlib/Base64$Encoder;->toBase64URL:[C

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/mobapphome/mahencryptorlib/Base64$Encoder;->toBase64:[C

    :goto_0
    sub-int v1, p3, p2

    .line 400
    div-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x3

    add-int v2, p2, v1

    .line 402
    iget v3, p0, Lcom/mobapphome/mahencryptorlib/Base64$Encoder;->linemax:I

    if-lez v3, :cond_1

    iget v3, p0, Lcom/mobapphome/mahencryptorlib/Base64$Encoder;->linemax:I

    div-int/lit8 v3, v3, 0x4

    mul-int/lit8 v3, v3, 0x3

    if-le v1, v3, :cond_1

    .line 403
    iget v1, p0, Lcom/mobapphome/mahencryptorlib/Base64$Encoder;->linemax:I

    div-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x3

    :cond_1
    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge p2, v2, :cond_5

    add-int v5, p2, v1

    .line 406
    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v5

    move v6, p2

    move v7, v4

    :goto_2
    if-ge v6, v5, :cond_2

    add-int/lit8 v8, v6, 0x1

    .line 408
    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    add-int/lit8 v9, v8, 0x1

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x8

    or-int/2addr v6, v8

    add-int/lit8 v8, v9, 0x1

    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    or-int/2addr v6, v9

    add-int/lit8 v9, v7, 0x1

    ushr-int/lit8 v10, v6, 0x12

    and-int/lit8 v10, v10, 0x3f

    .line 411
    aget-char v10, v0, v10

    int-to-byte v10, v10

    aput-byte v10, p4, v7

    add-int/lit8 v7, v9, 0x1

    ushr-int/lit8 v10, v6, 0xc

    and-int/lit8 v10, v10, 0x3f

    .line 412
    aget-char v10, v0, v10

    int-to-byte v10, v10

    aput-byte v10, p4, v9

    add-int/lit8 v9, v7, 0x1

    ushr-int/lit8 v10, v6, 0x6

    and-int/lit8 v10, v10, 0x3f

    .line 413
    aget-char v10, v0, v10

    int-to-byte v10, v10

    aput-byte v10, p4, v7

    add-int/lit8 v7, v9, 0x1

    and-int/lit8 v6, v6, 0x3f

    .line 414
    aget-char v6, v0, v6

    int-to-byte v6, v6

    aput-byte v6, p4, v9

    move v6, v8

    goto :goto_2

    :cond_2
    sub-int p2, v5, p2

    .line 416
    div-int/lit8 p2, p2, 0x3

    mul-int/lit8 p2, p2, 0x4

    add-int/2addr v4, p2

    .line 419
    iget v6, p0, Lcom/mobapphome/mahencryptorlib/Base64$Encoder;->linemax:I

    if-ne p2, v6, :cond_4

    if-ge v5, p3, :cond_4

    .line 420
    iget-object p2, p0, Lcom/mobapphome/mahencryptorlib/Base64$Encoder;->newline:[B

    array-length v6, p2

    move v7, v4

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v6, :cond_3

    aget-byte v8, p2, v4

    add-int/lit8 v9, v7, 0x1

    .line 421
    aput-byte v8, p4, v7

    add-int/lit8 v4, v4, 0x1

    move v7, v9

    goto :goto_3

    :cond_3
    move v4, v7

    :cond_4
    move p2, v5

    goto :goto_1

    :cond_5
    if-ge p2, p3, :cond_7

    add-int/lit8 v1, p2, 0x1

    .line 426
    aget-byte p2, p1, p2

    and-int/lit16 p2, p2, 0xff

    add-int/lit8 v2, v4, 0x1

    shr-int/lit8 v3, p2, 0x2

    .line 427
    aget-char v3, v0, v3

    int-to-byte v3, v3

    aput-byte v3, p4, v4

    const/16 v3, 0x3d

    if-ne v1, p3, :cond_6

    add-int/lit8 v4, v2, 0x1

    shl-int/lit8 p1, p2, 0x4

    and-int/lit8 p1, p1, 0x3f

    .line 429
    aget-char p1, v0, p1

    int-to-byte p1, p1

    aput-byte p1, p4, v2

    .line 430
    iget-boolean p1, p0, Lcom/mobapphome/mahencryptorlib/Base64$Encoder;->doPadding:Z

    if-eqz p1, :cond_7

    add-int/lit8 p1, v4, 0x1

    .line 431
    aput-byte v3, p4, v4

    add-int/lit8 v4, p1, 0x1

    .line 432
    aput-byte v3, p4, p1

    goto :goto_4

    .line 435
    :cond_6
    aget-byte p1, p1, v1

    and-int/lit16 p1, p1, 0xff

    add-int/lit8 p3, v2, 0x1

    shl-int/lit8 p2, p2, 0x4

    and-int/lit8 p2, p2, 0x3f

    shr-int/lit8 v1, p1, 0x4

    or-int/2addr p2, v1

    .line 436
    aget-char p2, v0, p2

    int-to-byte p2, p2

    aput-byte p2, p4, v2

    add-int/lit8 v4, p3, 0x1

    shl-int/lit8 p1, p1, 0x2

    and-int/lit8 p1, p1, 0x3f

    .line 437
    aget-char p1, v0, p1

    int-to-byte p1, p1

    aput-byte p1, p4, p3

    .line 438
    iget-boolean p1, p0, Lcom/mobapphome/mahencryptorlib/Base64$Encoder;->doPadding:Z

    if-eqz p1, :cond_7

    add-int/lit8 p1, v4, 0x1

    .line 439
    aput-byte v3, p4, v4

    move v4, p1

    :cond_7
    :goto_4
    return v4
.end method

.method private final outLength(I)I
    .locals 2

    .line 245
    iget-boolean v0, p0, Lcom/mobapphome/mahencryptorlib/Base64$Encoder;->doPadding:Z

    if-eqz v0, :cond_0

    add-int/lit8 p1, p1, 0x2

    .line 246
    div-int/lit8 p1, p1, 0x3

    mul-int/lit8 p1, p1, 0x4

    goto :goto_1

    .line 248
    :cond_0
    rem-int/lit8 v0, p1, 0x3

    .line 249
    div-int/lit8 p1, p1, 0x3

    mul-int/lit8 p1, p1, 0x4

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    :goto_0
    add-int/2addr p1, v0

    .line 251
    :goto_1
    iget v0, p0, Lcom/mobapphome/mahencryptorlib/Base64$Encoder;->linemax:I

    if-lez v0, :cond_2

    add-int/lit8 v0, p1, -0x1

    .line 252
    iget v1, p0, Lcom/mobapphome/mahencryptorlib/Base64$Encoder;->linemax:I

    div-int/2addr v0, v1

    iget-object v1, p0, Lcom/mobapphome/mahencryptorlib/Base64$Encoder;->newline:[B

    array-length v1, v1

    mul-int v0, v0, v1

    add-int/2addr p1, v0

    :cond_2
    return p1
.end method


# virtual methods
.method public encode([B[B)I
    .locals 2

    .line 295
    array-length v0, p1

    invoke-direct {p0, v0}, Lcom/mobapphome/mahencryptorlib/Base64$Encoder;->outLength(I)I

    move-result v0

    .line 296
    array-length v1, p2

    if-ge v1, v0, :cond_0

    .line 297
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Output byte array is too small for encoding all input bytes"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    const/4 v0, 0x0

    .line 299
    array-length v1, p1

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/mobapphome/mahencryptorlib/Base64$Encoder;->encode0([BII[B)I

    move-result p1

    return p1
.end method

.method public encode(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 5

    .line 340
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/mobapphome/mahencryptorlib/Base64$Encoder;->outLength(I)I

    move-result v0

    .line 341
    new-array v0, v0, [B

    .line 343
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 344
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 345
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v2, v3

    .line 346
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    add-int/2addr v3, v4

    .line 344
    invoke-direct {p0, v1, v2, v3, v0}, Lcom/mobapphome/mahencryptorlib/Base64$Encoder;->encode0([BII[B)I

    move-result v1

    .line 348
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0

    .line 350
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    new-array v1, v1, [B

    .line 351
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const/4 p1, 0x0

    .line 352
    array-length v2, v1

    invoke-direct {p0, v1, p1, v2, v0}, Lcom/mobapphome/mahencryptorlib/Base64$Encoder;->encode0([BII[B)I

    move-result v1

    .line 354
    :goto_0
    array-length p1, v0

    if-eq v1, p1, :cond_1

    .line 355
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    .line 356
    :cond_1
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public encode([B)[B
    .locals 3

    .line 267
    array-length v0, p1

    invoke-direct {p0, v0}, Lcom/mobapphome/mahencryptorlib/Base64$Encoder;->outLength(I)I

    move-result v0

    .line 268
    new-array v0, v0, [B

    .line 269
    array-length v1, p1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v1, v0}, Lcom/mobapphome/mahencryptorlib/Base64$Encoder;->encode0([BII[B)I

    move-result p1

    .line 270
    array-length v1, v0

    if-eq p1, v1, :cond_0

    .line 271
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method

.method public encodeToString([B)Ljava/lang/String;
    .locals 3

    .line 321
    invoke-virtual {p0, p1}, Lcom/mobapphome/mahencryptorlib/Base64$Encoder;->encode([B)[B

    move-result-object p1

    .line 322
    new-instance v0, Ljava/lang/String;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2, v2, v1}, Ljava/lang/String;-><init>([BIII)V

    return-object v0
.end method

.method public withoutPadding()Lcom/mobapphome/mahencryptorlib/Base64$Encoder;
    .locals 5

    .line 392
    iget-boolean v0, p0, Lcom/mobapphome/mahencryptorlib/Base64$Encoder;->doPadding:Z

    if-nez v0, :cond_0

    return-object p0

    .line 394
    :cond_0
    new-instance v0, Lcom/mobapphome/mahencryptorlib/Base64$Encoder;

    iget-boolean v1, p0, Lcom/mobapphome/mahencryptorlib/Base64$Encoder;->isURL:Z

    iget-object v2, p0, Lcom/mobapphome/mahencryptorlib/Base64$Encoder;->newline:[B

    iget v3, p0, Lcom/mobapphome/mahencryptorlib/Base64$Encoder;->linemax:I

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mobapphome/mahencryptorlib/Base64$Encoder;-><init>(Z[BIZ)V

    return-object v0
.end method

.method public wrap(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 7

    .line 374
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    new-instance v6, Lcom/mobapphome/mahencryptorlib/Base64$EncOutputStream;

    iget-boolean v0, p0, Lcom/mobapphome/mahencryptorlib/Base64$Encoder;->isURL:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/mobapphome/mahencryptorlib/Base64$Encoder;->toBase64URL:[C

    :goto_0
    move-object v2, v0

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/mobapphome/mahencryptorlib/Base64$Encoder;->toBase64:[C

    goto :goto_0

    :goto_1
    iget-object v3, p0, Lcom/mobapphome/mahencryptorlib/Base64$Encoder;->newline:[B

    iget v4, p0, Lcom/mobapphome/mahencryptorlib/Base64$Encoder;->linemax:I

    iget-boolean v5, p0, Lcom/mobapphome/mahencryptorlib/Base64$Encoder;->doPadding:Z

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/mobapphome/mahencryptorlib/Base64$EncOutputStream;-><init>(Ljava/io/OutputStream;[C[BIZ)V

    return-object v6
.end method

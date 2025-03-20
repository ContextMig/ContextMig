.class public Lcom/mobapphome/mahencryptorlib/Base64$Decoder;
.super Ljava/lang/Object;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobapphome/mahencryptorlib/Base64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Decoder"
.end annotation


# static fields
.field static final RFC2045:Lcom/mobapphome/mahencryptorlib/Base64$Decoder;

.field static final RFC4648:Lcom/mobapphome/mahencryptorlib/Base64$Decoder;

.field static final RFC4648_URLSAFE:Lcom/mobapphome/mahencryptorlib/Base64$Decoder;

.field private static final fromBase64:[I

.field private static final fromBase64URL:[I


# instance fields
.field private final isMIME:Z

.field private final isURL:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/16 v0, 0x100

    .line 491
    new-array v1, v0, [I

    sput-object v1, Lcom/mobapphome/mahencryptorlib/Base64$Decoder;->fromBase64:[I

    .line 493
    sget-object v1, Lcom/mobapphome/mahencryptorlib/Base64$Decoder;->fromBase64:[I

    const/4 v2, -0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 494
    :goto_0
    invoke-static {}, Lcom/mobapphome/mahencryptorlib/Base64$Encoder;->access$200()[C

    move-result-object v4

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 495
    sget-object v4, Lcom/mobapphome/mahencryptorlib/Base64$Decoder;->fromBase64:[I

    invoke-static {}, Lcom/mobapphome/mahencryptorlib/Base64$Encoder;->access$200()[C

    move-result-object v5

    aget-char v5, v5, v3

    aput v3, v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 496
    :cond_0
    sget-object v3, Lcom/mobapphome/mahencryptorlib/Base64$Decoder;->fromBase64:[I

    const/4 v4, -0x2

    const/16 v5, 0x3d

    aput v4, v3, v5

    .line 503
    new-array v0, v0, [I

    sput-object v0, Lcom/mobapphome/mahencryptorlib/Base64$Decoder;->fromBase64URL:[I

    .line 506
    sget-object v0, Lcom/mobapphome/mahencryptorlib/Base64$Decoder;->fromBase64URL:[I

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    const/4 v0, 0x0

    .line 507
    :goto_1
    invoke-static {}, Lcom/mobapphome/mahencryptorlib/Base64$Encoder;->access$300()[C

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 508
    sget-object v2, Lcom/mobapphome/mahencryptorlib/Base64$Decoder;->fromBase64URL:[I

    invoke-static {}, Lcom/mobapphome/mahencryptorlib/Base64$Encoder;->access$300()[C

    move-result-object v3

    aget-char v3, v3, v0

    aput v0, v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 509
    :cond_1
    sget-object v0, Lcom/mobapphome/mahencryptorlib/Base64$Decoder;->fromBase64URL:[I

    aput v4, v0, v5

    .line 512
    new-instance v0, Lcom/mobapphome/mahencryptorlib/Base64$Decoder;

    invoke-direct {v0, v1, v1}, Lcom/mobapphome/mahencryptorlib/Base64$Decoder;-><init>(ZZ)V

    sput-object v0, Lcom/mobapphome/mahencryptorlib/Base64$Decoder;->RFC4648:Lcom/mobapphome/mahencryptorlib/Base64$Decoder;

    .line 513
    new-instance v0, Lcom/mobapphome/mahencryptorlib/Base64$Decoder;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lcom/mobapphome/mahencryptorlib/Base64$Decoder;-><init>(ZZ)V

    sput-object v0, Lcom/mobapphome/mahencryptorlib/Base64$Decoder;->RFC4648_URLSAFE:Lcom/mobapphome/mahencryptorlib/Base64$Decoder;

    .line 514
    new-instance v0, Lcom/mobapphome/mahencryptorlib/Base64$Decoder;

    invoke-direct {v0, v1, v2}, Lcom/mobapphome/mahencryptorlib/Base64$Decoder;-><init>(ZZ)V

    sput-object v0, Lcom/mobapphome/mahencryptorlib/Base64$Decoder;->RFC2045:Lcom/mobapphome/mahencryptorlib/Base64$Decoder;

    return-void
.end method

.method private constructor <init>(ZZ)V
    .locals 0

    .line 478
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 479
    iput-boolean p1, p0, Lcom/mobapphome/mahencryptorlib/Base64$Decoder;->isURL:Z

    .line 480
    iput-boolean p2, p0, Lcom/mobapphome/mahencryptorlib/Base64$Decoder;->isMIME:Z

    return-void
.end method

.method static synthetic access$000()[I
    .locals 1

    .line 473
    sget-object v0, Lcom/mobapphome/mahencryptorlib/Base64$Decoder;->fromBase64:[I

    return-object v0
.end method

.method private decode0([BII[B)I
    .locals 10

    .line 697
    iget-boolean v0, p0, Lcom/mobapphome/mahencryptorlib/Base64$Decoder;->isURL:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/mobapphome/mahencryptorlib/Base64$Decoder;->fromBase64URL:[I

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/mobapphome/mahencryptorlib/Base64$Decoder;->fromBase64:[I

    :goto_0
    const/16 v1, 0x12

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x12

    const/4 v5, 0x0

    :goto_1
    const/4 v6, 0x6

    const/16 v7, 0x10

    if-ge p2, p3, :cond_7

    add-int/lit8 v8, p2, 0x1

    .line 702
    aget-byte p2, p1, p2

    and-int/lit16 p2, p2, 0xff

    .line 703
    aget p2, v0, p2

    if-gez p2, :cond_5

    const/4 v9, -0x2

    if-ne p2, v9, :cond_3

    if-ne v4, v6, :cond_1

    if-eq v8, p3, :cond_2

    add-int/lit8 p2, v8, 0x1

    .line 710
    aget-byte v2, p1, v8

    const/16 v8, 0x3d

    if-ne v2, v8, :cond_2

    goto :goto_2

    :cond_1
    move p2, v8

    :goto_2
    if-ne v4, v1, :cond_7

    .line 712
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Input byte array has wrong 4-byte ending unit"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 717
    :cond_3
    iget-boolean p2, p0, Lcom/mobapphome/mahencryptorlib/Base64$Decoder;->isMIME:Z

    if-eqz p2, :cond_4

    goto :goto_3

    .line 720
    :cond_4
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Illegal base64 character "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, -0x1

    aget-byte p1, p1, v8

    .line 722
    invoke-static {p1, v7}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_5
    shl-int/2addr p2, v4

    or-int/2addr p2, v3

    add-int/lit8 v4, v4, -0x6

    if-gez v4, :cond_6

    add-int/lit8 v3, v5, 0x1

    shr-int/lit8 v4, p2, 0x10

    int-to-byte v4, v4

    .line 727
    aput-byte v4, p4, v5

    add-int/lit8 v4, v3, 0x1

    shr-int/lit8 v5, p2, 0x8

    int-to-byte v5, v5

    .line 728
    aput-byte v5, p4, v3

    add-int/lit8 v3, v4, 0x1

    int-to-byte p2, p2

    .line 729
    aput-byte p2, p4, v4

    move v5, v3

    const/4 v3, 0x0

    const/16 v4, 0x12

    goto :goto_3

    :cond_6
    move v3, p2

    :goto_3
    move p2, v8

    goto :goto_1

    :cond_7
    if-ne v4, v6, :cond_8

    add-int/lit8 v1, v5, 0x1

    shr-int/lit8 v2, v3, 0x10

    int-to-byte v2, v2

    .line 736
    aput-byte v2, p4, v5

    move v5, v1

    goto :goto_4

    :cond_8
    if-nez v4, :cond_9

    add-int/lit8 v1, v5, 0x1

    shr-int/lit8 v2, v3, 0x10

    int-to-byte v2, v2

    .line 738
    aput-byte v2, p4, v5

    add-int/lit8 v5, v1, 0x1

    shr-int/lit8 v2, v3, 0x8

    int-to-byte v2, v2

    .line 739
    aput-byte v2, p4, v1

    goto :goto_4

    :cond_9
    const/16 p4, 0xc

    if-ne v4, p4, :cond_a

    .line 742
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Last unit does not have enough valid bits"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    :goto_4
    if-ge p2, p3, :cond_d

    .line 748
    iget-boolean p4, p0, Lcom/mobapphome/mahencryptorlib/Base64$Decoder;->isMIME:Z

    if-eqz p4, :cond_c

    add-int/lit8 p4, p2, 0x1

    aget-byte p2, p1, p2

    aget p2, v0, p2

    if-gez p2, :cond_b

    move p2, p4

    goto :goto_4

    :cond_b
    move p2, p4

    .line 750
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Input byte array has incorrect ending byte at "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d
    return v5
.end method

.method private outLength([BII)I
    .locals 8

    .line 659
    iget-boolean v0, p0, Lcom/mobapphome/mahencryptorlib/Base64$Decoder;->isURL:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/mobapphome/mahencryptorlib/Base64$Decoder;->fromBase64URL:[I

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/mobapphome/mahencryptorlib/Base64$Decoder;->fromBase64:[I

    :goto_0
    sub-int v1, p3, p2

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    const/4 v3, -0x1

    const/4 v4, 0x2

    if-ge v1, v4, :cond_3

    .line 665
    iget-boolean p1, p0, Lcom/mobapphome/mahencryptorlib/Base64$Decoder;->isMIME:Z

    if-eqz p1, :cond_2

    aget p1, v0, v2

    if-ne p1, v3, :cond_2

    return v2

    .line 667
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Input byte[] should at least have 2 bytes for base64 bytes"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 670
    :cond_3
    iget-boolean v5, p0, Lcom/mobapphome/mahencryptorlib/Base64$Decoder;->isMIME:Z

    const/16 v6, 0x3d

    const/4 v7, 0x1

    if-eqz v5, :cond_7

    const/4 v4, 0x0

    :goto_1
    if-ge p2, p3, :cond_6

    add-int/lit8 v5, p2, 0x1

    .line 675
    aget-byte p2, p1, p2

    and-int/lit16 p2, p2, 0xff

    if-ne p2, v6, :cond_4

    sub-int/2addr p3, v5

    add-int/2addr p3, v7

    sub-int/2addr v1, p3

    goto :goto_2

    .line 680
    :cond_4
    aget p2, v0, p2

    if-ne p2, v3, :cond_5

    add-int/lit8 v4, v4, 0x1

    :cond_5
    move p2, v5

    goto :goto_1

    :cond_6
    :goto_2
    sub-int/2addr v1, v4

    goto :goto_3

    :cond_7
    add-int/lit8 p2, p3, -0x1

    .line 685
    aget-byte p2, p1, p2

    if-ne p2, v6, :cond_9

    sub-int/2addr p3, v4

    .line 687
    aget-byte p1, p1, p3

    if-ne p1, v6, :cond_8

    const/4 v2, 0x2

    goto :goto_3

    :cond_8
    const/4 v2, 0x1

    :cond_9
    :goto_3
    if-nez v2, :cond_a

    and-int/lit8 p1, v1, 0x3

    if-eqz p1, :cond_a

    rsub-int/lit8 v2, p1, 0x4

    :cond_a
    add-int/lit8 v1, v1, 0x3

    .line 693
    div-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x3

    sub-int/2addr v1, v2

    return v1
.end method


# virtual methods
.method public decode([B[B)I
    .locals 3

    .line 586
    array-length v0, p1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/mobapphome/mahencryptorlib/Base64$Decoder;->outLength([BII)I

    move-result v0

    .line 587
    array-length v2, p2

    if-ge v2, v0, :cond_0

    .line 588
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Output byte array is too small for decoding all input bytes"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 590
    :cond_0
    array-length v0, p1

    invoke-direct {p0, p1, v1, v0, p2}, Lcom/mobapphome/mahencryptorlib/Base64$Decoder;->decode0([BII[B)I

    move-result p1

    return p1
.end method

.method public decode(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 6

    .line 615
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 619
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 620
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 621
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int/2addr v3, v4

    .line 622
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v4

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v5

    add-int/2addr v4, v5

    .line 623
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v5

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0

    .line 625
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    new-array v1, v1, [B

    .line 626
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 628
    array-length v4, v1

    const/4 v3, 0x0

    .line 630
    :goto_0
    invoke-direct {p0, v1, v3, v4}, Lcom/mobapphome/mahencryptorlib/Base64$Decoder;->outLength([BII)I

    move-result v5

    new-array v5, v5, [B

    .line 631
    invoke-direct {p0, v1, v3, v4, v5}, Lcom/mobapphome/mahencryptorlib/Base64$Decoder;->decode0([BII[B)I

    move-result v1

    invoke-static {v5, v2, v1}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    .line 633
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 634
    throw v1
.end method

.method public decode(Ljava/lang/String;)[B
    .locals 1

    const-string v0, "ISO-8859-1"

    .line 556
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mobapphome/mahencryptorlib/Base64$Decoder;->decode([B)[B

    move-result-object p1

    return-object p1
.end method

.method public decode([B)[B
    .locals 3

    .line 531
    array-length v0, p1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/mobapphome/mahencryptorlib/Base64$Decoder;->outLength([BII)I

    move-result v0

    new-array v0, v0, [B

    .line 532
    array-length v2, p1

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/mobapphome/mahencryptorlib/Base64$Decoder;->decode0([BII[B)I

    move-result p1

    .line 533
    array-length v1, v0

    if-eq p1, v1, :cond_0

    .line 534
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public wrap(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 3

    .line 654
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 655
    new-instance v0, Lcom/mobapphome/mahencryptorlib/Base64$DecInputStream;

    iget-boolean v1, p0, Lcom/mobapphome/mahencryptorlib/Base64$Decoder;->isURL:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/mobapphome/mahencryptorlib/Base64$Decoder;->fromBase64URL:[I

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/mobapphome/mahencryptorlib/Base64$Decoder;->fromBase64:[I

    :goto_0
    iget-boolean v2, p0, Lcom/mobapphome/mahencryptorlib/Base64$Decoder;->isMIME:Z

    invoke-direct {v0, p1, v1, v2}, Lcom/mobapphome/mahencryptorlib/Base64$DecInputStream;-><init>(Ljava/io/InputStream;[IZ)V

    return-object v0
.end method

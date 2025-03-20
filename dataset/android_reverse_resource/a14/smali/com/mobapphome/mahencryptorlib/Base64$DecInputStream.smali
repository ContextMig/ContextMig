.class Lcom/mobapphome/mahencryptorlib/Base64$DecInputStream;
.super Ljava/io/InputStream;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobapphome/mahencryptorlib/Base64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DecInputStream"
.end annotation


# instance fields
.field private final base64:[I

.field private bits:I

.field private closed:Z

.field private eof:Z

.field private final is:Ljava/io/InputStream;

.field private final isMIME:Z

.field private nextin:I

.field private nextout:I

.field private sbBuf:[B


# direct methods
.method constructor <init>(Ljava/io/InputStream;[IZ)V
    .locals 2

    .line 885
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x0

    .line 877
    iput v0, p0, Lcom/mobapphome/mahencryptorlib/Base64$DecInputStream;->bits:I

    const/16 v1, 0x12

    .line 878
    iput v1, p0, Lcom/mobapphome/mahencryptorlib/Base64$DecInputStream;->nextin:I

    const/4 v1, -0x8

    .line 880
    iput v1, p0, Lcom/mobapphome/mahencryptorlib/Base64$DecInputStream;->nextout:I

    .line 882
    iput-boolean v0, p0, Lcom/mobapphome/mahencryptorlib/Base64$DecInputStream;->eof:Z

    .line 883
    iput-boolean v0, p0, Lcom/mobapphome/mahencryptorlib/Base64$DecInputStream;->closed:Z

    const/4 v0, 0x1

    .line 891
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mobapphome/mahencryptorlib/Base64$DecInputStream;->sbBuf:[B

    .line 886
    iput-object p1, p0, Lcom/mobapphome/mahencryptorlib/Base64$DecInputStream;->is:Ljava/io/InputStream;

    .line 887
    iput-object p2, p0, Lcom/mobapphome/mahencryptorlib/Base64$DecInputStream;->base64:[I

    .line 888
    iput-boolean p3, p0, Lcom/mobapphome/mahencryptorlib/Base64$DecInputStream;->isMIME:Z

    return-void
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 993
    iget-boolean v0, p0, Lcom/mobapphome/mahencryptorlib/Base64$DecInputStream;->closed:Z

    if-eqz v0, :cond_0

    .line 994
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 995
    :cond_0
    iget-object v0, p0, Lcom/mobapphome/mahencryptorlib/Base64$DecInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1000
    iget-boolean v0, p0, Lcom/mobapphome/mahencryptorlib/Base64$DecInputStream;->closed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1001
    iput-boolean v0, p0, Lcom/mobapphome/mahencryptorlib/Base64$DecInputStream;->closed:Z

    .line 1002
    iget-object v0, p0, Lcom/mobapphome/mahencryptorlib/Base64$DecInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_0
    return-void
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 895
    iget-object v0, p0, Lcom/mobapphome/mahencryptorlib/Base64$DecInputStream;->sbBuf:[B

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/mobapphome/mahencryptorlib/Base64$DecInputStream;->read([BII)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mobapphome/mahencryptorlib/Base64$DecInputStream;->sbBuf:[B

    aget-byte v0, v0, v1

    and-int/lit16 v2, v0, 0xff

    :goto_0
    return v2
.end method

.method public read([BII)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 900
    iget-boolean v0, p0, Lcom/mobapphome/mahencryptorlib/Base64$DecInputStream;->closed:Z

    if-eqz v0, :cond_0

    .line 901
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Stream is closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 902
    :cond_0
    iget-boolean v0, p0, Lcom/mobapphome/mahencryptorlib/Base64$DecInputStream;->eof:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/mobapphome/mahencryptorlib/Base64$DecInputStream;->nextout:I

    if-gez v0, :cond_1

    return v1

    :cond_1
    if-ltz p2, :cond_17

    if-ltz p3, :cond_17

    .line 904
    array-length v0, p1

    sub-int/2addr v0, p2

    if-le p3, v0, :cond_2

    goto/16 :goto_9

    .line 907
    :cond_2
    iget v0, p0, Lcom/mobapphome/mahencryptorlib/Base64$DecInputStream;->nextout:I

    const/4 v2, 0x0

    if-ltz v0, :cond_5

    move v0, p2

    :goto_0
    if-nez p3, :cond_3

    sub-int/2addr v0, p2

    return v0

    :cond_3
    add-int/lit8 v3, v0, 0x1

    .line 911
    iget v4, p0, Lcom/mobapphome/mahencryptorlib/Base64$DecInputStream;->bits:I

    iget v5, p0, Lcom/mobapphome/mahencryptorlib/Base64$DecInputStream;->nextout:I

    shr-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, p1, v0

    add-int/lit8 p3, p3, -0x1

    .line 913
    iget v0, p0, Lcom/mobapphome/mahencryptorlib/Base64$DecInputStream;->nextout:I

    add-int/lit8 v0, v0, -0x8

    iput v0, p0, Lcom/mobapphome/mahencryptorlib/Base64$DecInputStream;->nextout:I

    .line 914
    iget v0, p0, Lcom/mobapphome/mahencryptorlib/Base64$DecInputStream;->nextout:I

    if-gez v0, :cond_4

    .line 915
    iput v2, p0, Lcom/mobapphome/mahencryptorlib/Base64$DecInputStream;->bits:I

    goto :goto_1

    :cond_4
    move v0, v3

    goto :goto_0

    :cond_5
    move v3, p2

    :goto_1
    if-lez p3, :cond_16

    .line 918
    iget-object v0, p0, Lcom/mobapphome/mahencryptorlib/Base64$DecInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/16 v4, 0xc

    const/16 v5, 0x12

    const/16 v6, 0x10

    const/4 v7, 0x1

    if-ne v0, v1, :cond_b

    .line 920
    iput-boolean v7, p0, Lcom/mobapphome/mahencryptorlib/Base64$DecInputStream;->eof:Z

    .line 921
    iget v0, p0, Lcom/mobapphome/mahencryptorlib/Base64$DecInputStream;->nextin:I

    if-eq v0, v5, :cond_9

    .line 922
    iget v0, p0, Lcom/mobapphome/mahencryptorlib/Base64$DecInputStream;->nextin:I

    if-ne v0, v4, :cond_6

    .line 923
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Base64 stream has one un-decoded dangling byte."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    add-int/lit8 v0, v3, 0x1

    .line 926
    iget v4, p0, Lcom/mobapphome/mahencryptorlib/Base64$DecInputStream;->bits:I

    shr-int/2addr v4, v6

    int-to-byte v4, v4

    aput-byte v4, p1, v3

    add-int/2addr p3, v1

    .line 928
    iget v3, p0, Lcom/mobapphome/mahencryptorlib/Base64$DecInputStream;->nextin:I

    if-nez v3, :cond_8

    if-nez p3, :cond_7

    .line 930
    iget p1, p0, Lcom/mobapphome/mahencryptorlib/Base64$DecInputStream;->bits:I

    shr-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/mobapphome/mahencryptorlib/Base64$DecInputStream;->bits:I

    .line 931
    iput v2, p0, Lcom/mobapphome/mahencryptorlib/Base64$DecInputStream;->nextout:I

    goto :goto_2

    :cond_7
    add-int/lit8 v3, v0, 0x1

    .line 933
    iget p3, p0, Lcom/mobapphome/mahencryptorlib/Base64$DecInputStream;->bits:I

    shr-int/lit8 p3, p3, 0x8

    int-to-byte p3, p3

    aput-byte p3, p1, v0

    goto :goto_3

    :cond_8
    :goto_2
    move v3, v0

    :cond_9
    :goto_3
    if-ne v3, p2, :cond_a

    return v1

    :cond_a
    sub-int/2addr v3, p2

    return v3

    :cond_b
    const/4 v8, 0x6

    const/16 v9, 0x3d

    if-ne v0, v9, :cond_10

    .line 947
    iget v0, p0, Lcom/mobapphome/mahencryptorlib/Base64$DecInputStream;->nextin:I

    if-eq v0, v5, :cond_f

    iget v0, p0, Lcom/mobapphome/mahencryptorlib/Base64$DecInputStream;->nextin:I

    if-eq v0, v4, :cond_f

    iget v0, p0, Lcom/mobapphome/mahencryptorlib/Base64$DecInputStream;->nextin:I

    if-ne v0, v8, :cond_c

    iget-object v0, p0, Lcom/mobapphome/mahencryptorlib/Base64$DecInputStream;->is:Ljava/io/InputStream;

    .line 948
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-eq v0, v9, :cond_c

    goto :goto_6

    :cond_c
    add-int/lit8 v0, v3, 0x1

    .line 951
    iget v4, p0, Lcom/mobapphome/mahencryptorlib/Base64$DecInputStream;->bits:I

    shr-int/2addr v4, v6

    int-to-byte v4, v4

    aput-byte v4, p1, v3

    add-int/2addr p3, v1

    .line 953
    iget v1, p0, Lcom/mobapphome/mahencryptorlib/Base64$DecInputStream;->nextin:I

    if-nez v1, :cond_e

    if-nez p3, :cond_d

    .line 955
    iget p1, p0, Lcom/mobapphome/mahencryptorlib/Base64$DecInputStream;->bits:I

    shr-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/mobapphome/mahencryptorlib/Base64$DecInputStream;->bits:I

    .line 956
    iput v2, p0, Lcom/mobapphome/mahencryptorlib/Base64$DecInputStream;->nextout:I

    goto :goto_4

    :cond_d
    add-int/lit8 p3, v0, 0x1

    .line 958
    iget v1, p0, Lcom/mobapphome/mahencryptorlib/Base64$DecInputStream;->bits:I

    shr-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    move v3, p3

    goto :goto_5

    :cond_e
    :goto_4
    move v3, v0

    .line 961
    :goto_5
    iput-boolean v7, p0, Lcom/mobapphome/mahencryptorlib/Base64$DecInputStream;->eof:Z

    goto/16 :goto_8

    .line 949
    :cond_f
    :goto_6
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Illegal base64 ending sequence:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/mobapphome/mahencryptorlib/Base64$DecInputStream;->nextin:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 964
    :cond_10
    iget-object v4, p0, Lcom/mobapphome/mahencryptorlib/Base64$DecInputStream;->base64:[I

    aget v0, v4, v0

    if-ne v0, v1, :cond_12

    .line 965
    iget-boolean v4, p0, Lcom/mobapphome/mahencryptorlib/Base64$DecInputStream;->isMIME:Z

    if-eqz v4, :cond_11

    goto/16 :goto_1

    .line 968
    :cond_11
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Illegal base64 character "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 969
    invoke-static {v0, v6}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 971
    :cond_12
    iget v4, p0, Lcom/mobapphome/mahencryptorlib/Base64$DecInputStream;->bits:I

    iget v7, p0, Lcom/mobapphome/mahencryptorlib/Base64$DecInputStream;->nextin:I

    shl-int/2addr v0, v7

    or-int/2addr v0, v4

    iput v0, p0, Lcom/mobapphome/mahencryptorlib/Base64$DecInputStream;->bits:I

    .line 972
    iget v0, p0, Lcom/mobapphome/mahencryptorlib/Base64$DecInputStream;->nextin:I

    if-nez v0, :cond_15

    .line 973
    iput v5, p0, Lcom/mobapphome/mahencryptorlib/Base64$DecInputStream;->nextin:I

    .line 974
    iput v6, p0, Lcom/mobapphome/mahencryptorlib/Base64$DecInputStream;->nextout:I

    .line 975
    :goto_7
    iget v0, p0, Lcom/mobapphome/mahencryptorlib/Base64$DecInputStream;->nextout:I

    if-ltz v0, :cond_14

    add-int/lit8 v0, v3, 0x1

    .line 976
    iget v4, p0, Lcom/mobapphome/mahencryptorlib/Base64$DecInputStream;->bits:I

    iget v5, p0, Lcom/mobapphome/mahencryptorlib/Base64$DecInputStream;->nextout:I

    shr-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, p1, v3

    add-int/lit8 p3, p3, -0x1

    .line 978
    iget v3, p0, Lcom/mobapphome/mahencryptorlib/Base64$DecInputStream;->nextout:I

    add-int/lit8 v3, v3, -0x8

    iput v3, p0, Lcom/mobapphome/mahencryptorlib/Base64$DecInputStream;->nextout:I

    if-nez p3, :cond_13

    .line 979
    iget v3, p0, Lcom/mobapphome/mahencryptorlib/Base64$DecInputStream;->nextout:I

    if-ltz v3, :cond_13

    sub-int/2addr v0, p2

    return v0

    :cond_13
    move v3, v0

    goto :goto_7

    .line 983
    :cond_14
    iput v2, p0, Lcom/mobapphome/mahencryptorlib/Base64$DecInputStream;->bits:I

    goto/16 :goto_1

    .line 985
    :cond_15
    iget v0, p0, Lcom/mobapphome/mahencryptorlib/Base64$DecInputStream;->nextin:I

    sub-int/2addr v0, v8

    iput v0, p0, Lcom/mobapphome/mahencryptorlib/Base64$DecInputStream;->nextin:I

    goto/16 :goto_1

    :cond_16
    :goto_8
    sub-int/2addr v3, p2

    return v3

    .line 905
    :cond_17
    :goto_9
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

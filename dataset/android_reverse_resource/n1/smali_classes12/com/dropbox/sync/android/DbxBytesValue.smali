.class Lcom/dropbox/sync/android/DbxBytesValue;
.super Lcom/dropbox/sync/android/DbxAtom;
.source "DbxBytesValue.java"


# instance fields
.field final value:[B


# direct methods
.method constructor <init>([B)V
    .locals 2
    .param p1, "v"    # [B

    .prologue
    .line 16
    sget-object v0, Lcom/dropbox/sync/android/DbxFields$ValueType;->BYTES:Lcom/dropbox/sync/android/DbxFields$ValueType;

    sget-object v1, Lcom/dropbox/sync/android/DbxFields$AtomType;->BYTES:Lcom/dropbox/sync/android/DbxFields$AtomType;

    invoke-direct {p0, v0, v1}, Lcom/dropbox/sync/android/DbxAtom;-><init>(Lcom/dropbox/sync/android/DbxFields$ValueType;Lcom/dropbox/sync/android/DbxFields$AtomType;)V

    .line 17
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Bytes value can\'t be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 18
    :cond_0
    invoke-static {p1}, Lcom/dropbox/sync/android/DbxBytesValue;->copyBytes([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/sync/android/DbxBytesValue;->value:[B

    .line 19
    return-void
.end method

.method private static copyBytes([B)[B
    .locals 3
    .param p0, "in"    # [B

    .prologue
    const/4 v2, 0x0

    .line 81
    array-length v1, p0

    new-array v0, v1, [B

    .line 82
    .local v0, "out":[B
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 83
    return-object v0
.end method


# virtual methods
.method public asBytes()[B
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxBytesValue;->value:[B

    invoke-static {v0}, Lcom/dropbox/sync/android/DbxBytesValue;->copyBytes([B)[B

    move-result-object v0

    return-object v0
.end method

.method public compareTo(Lcom/dropbox/sync/android/DbxValue;)I
    .locals 8
    .param p1, "other"    # Lcom/dropbox/sync/android/DbxValue;

    .prologue
    const/4 v6, 0x0

    .line 28
    if-nez p1, :cond_0

    new-instance v6, Ljava/lang/NullPointerException;

    invoke-direct {v6}, Ljava/lang/NullPointerException;-><init>()V

    throw v6

    .line 29
    :cond_0
    if-ne p0, p1, :cond_2

    .line 44
    :cond_1
    :goto_0
    return v6

    .line 30
    :cond_2
    instance-of v7, p1, Lcom/dropbox/sync/android/DbxBytesValue;

    if-nez v7, :cond_3

    .line 31
    iget-object v6, p0, Lcom/dropbox/sync/android/DbxBytesValue;->valueType:Lcom/dropbox/sync/android/DbxFields$ValueType;

    iget-object v7, p1, Lcom/dropbox/sync/android/DbxValue;->valueType:Lcom/dropbox/sync/android/DbxFields$ValueType;

    invoke-virtual {v6, v7}, Lcom/dropbox/sync/android/DbxFields$ValueType;->compareTo(Ljava/lang/Enum;)I

    move-result v6

    goto :goto_0

    :cond_3
    move-object v3, p1

    .line 32
    check-cast v3, Lcom/dropbox/sync/android/DbxBytesValue;

    .line 33
    .local v3, "otherBlob":Lcom/dropbox/sync/android/DbxBytesValue;
    iget-object v7, p0, Lcom/dropbox/sync/android/DbxBytesValue;->value:[B

    array-length v5, v7

    .local v5, "size":I
    iget-object v7, v3, Lcom/dropbox/sync/android/DbxBytesValue;->value:[B

    array-length v4, v7

    .line 34
    .local v4, "otherSize":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v5, :cond_6

    .line 35
    if-lt v0, v4, :cond_4

    .line 36
    const/4 v6, 0x1

    goto :goto_0

    .line 38
    :cond_4
    iget-object v7, p0, Lcom/dropbox/sync/android/DbxBytesValue;->value:[B

    aget-byte v7, v7, v0

    and-int/lit16 v1, v7, 0xff

    .line 39
    .local v1, "i1":I
    iget-object v7, v3, Lcom/dropbox/sync/android/DbxBytesValue;->value:[B

    aget-byte v7, v7, v0

    and-int/lit16 v2, v7, 0xff

    .line 40
    .local v2, "i2":I
    if-eq v1, v2, :cond_5

    .line 41
    sub-int v6, v1, v2

    goto :goto_0

    .line 34
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 44
    .end local v1    # "i1":I
    .end local v2    # "i2":I
    :cond_6
    if-eq v5, v4, :cond_1

    const/4 v6, -0x1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 8
    check-cast p1, Lcom/dropbox/sync/android/DbxValue;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/dropbox/sync/android/DbxBytesValue;->compareTo(Lcom/dropbox/sync/android/DbxValue;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 49
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    .line 51
    .end local p1    # "other":Ljava/lang/Object;
    :goto_0
    return v0

    .line 50
    .restart local p1    # "other":Ljava/lang/Object;
    :cond_0
    instance-of v0, p1, Lcom/dropbox/sync/android/DbxBytesValue;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 51
    :cond_1
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxBytesValue;->value:[B

    check-cast p1, Lcom/dropbox/sync/android/DbxBytesValue;

    .end local p1    # "other":Ljava/lang/Object;
    iget-object v1, p1, Lcom/dropbox/sync/android/DbxBytesValue;->value:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    goto :goto_0
.end method

.method getNativeAtom()J
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxBytesValue;->value:[B

    invoke-static {v0}, Lcom/dropbox/sync/android/NativeValue;->nativeBlobAtom([B)J

    move-result-wide v0

    return-wide v0
.end method

.method getNativeValue()J
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxBytesValue;->value:[B

    invoke-static {v0}, Lcom/dropbox/sync/android/NativeValue;->nativeBlobValue([B)J

    move-result-wide v0

    return-wide v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxBytesValue;->value:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .prologue
    .line 61
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .local v4, "sb":Ljava/lang/StringBuilder;
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxBytesValue;->value:[B

    .local v0, "arr$":[B
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-byte v1, v0, v2

    .line 63
    .local v1, "b":B
    const-string v5, "%02x"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    and-int/lit16 v8, v1, 0xff

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 65
    .end local v1    # "b":B
    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

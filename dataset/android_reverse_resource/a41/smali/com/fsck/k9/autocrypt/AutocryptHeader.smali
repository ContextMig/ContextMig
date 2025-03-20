.class Lcom/fsck/k9/autocrypt/AutocryptHeader;
.super Ljava/lang/Object;
.source "AutocryptHeader.java"


# static fields
.field static final AUTOCRYPT_HEADER:Ljava/lang/String; = "Autocrypt"

.field static final AUTOCRYPT_PARAM_ADDR:Ljava/lang/String; = "addr"

.field static final AUTOCRYPT_PARAM_KEY_DATA:Ljava/lang/String; = "keydata"

.field static final AUTOCRYPT_PARAM_PREFER_ENCRYPT:Ljava/lang/String; = "prefer-encrypt"

.field static final AUTOCRYPT_PARAM_TYPE:Ljava/lang/String; = "type"

.field static final AUTOCRYPT_PREFER_ENCRYPT_MUTUAL:Ljava/lang/String; = "mutual"

.field static final AUTOCRYPT_TYPE_1:Ljava/lang/String; = "1"

.field private static final HEADER_LINE_LENGTH:I = 0x4c


# instance fields
.field final addr:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field final isPreferEncryptMutual:Z

.field final keyData:[B
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field final parameters:Ljava/util/Map;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Map;Ljava/lang/String;[BZ)V
    .locals 0
    .param p1    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "addr"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "keyData"    # [B
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "isPreferEncryptMutual"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "[BZ)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p1, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/fsck/k9/autocrypt/AutocryptHeader;->parameters:Ljava/util/Map;

    .line 38
    iput-object p2, p0, Lcom/fsck/k9/autocrypt/AutocryptHeader;->addr:Ljava/lang/String;

    .line 39
    iput-object p3, p0, Lcom/fsck/k9/autocrypt/AutocryptHeader;->keyData:[B

    .line 40
    iput-boolean p4, p0, Lcom/fsck/k9/autocrypt/AutocryptHeader;->isPreferEncryptMutual:Z

    .line 41
    return-void
.end method

.method private appendBase64KeyData(Ljava/lang/StringBuilder;)V
    .locals 8
    .param p1, "builder"    # Ljava/lang/StringBuilder;

    .prologue
    const/4 v6, 0x0

    .line 64
    iget-object v7, p0, Lcom/fsck/k9/autocrypt/AutocryptHeader;->keyData:[B

    invoke-static {v7}, Lokio/ByteString;->of([B)Lokio/ByteString;

    move-result-object v7

    invoke-virtual {v7}, Lokio/ByteString;->base64()Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "base64KeyData":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 67
    .local v1, "base64Length":I
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    .line 68
    .local v5, "lineLengthBeforeKeyData":I
    rsub-int/lit8 v2, v5, 0x4c

    .line 70
    .local v2, "dataLengthInFirstLine":I
    if-lez v2, :cond_1

    if-ge v1, v2, :cond_1

    const/4 v4, 0x1

    .line 71
    .local v4, "keyDataFitsInFirstLine":Z
    :goto_0
    if-eqz v4, :cond_2

    .line 72
    invoke-virtual {p1, v0, v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 90
    :cond_0
    return-void

    .end local v4    # "keyDataFitsInFirstLine":Z
    :cond_1
    move v4, v6

    .line 70
    goto :goto_0

    .line 76
    .restart local v4    # "keyDataFitsInFirstLine":Z
    :cond_2
    if-lez v2, :cond_3

    .line 77
    invoke-virtual {p1, v0, v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\r\n "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    :goto_1
    move v3, v2

    .local v3, "i":I
    :goto_2
    if-ge v3, v1, :cond_0

    .line 84
    add-int/lit8 v6, v3, 0x4c

    if-gt v6, v1, :cond_4

    .line 85
    add-int/lit8 v6, v3, 0x4c

    invoke-virtual {p1, v0, v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\r\n "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    :goto_3
    add-int/lit8 v3, v3, 0x4c

    goto :goto_2

    .line 79
    .end local v3    # "i":I
    :cond_3
    const-string v6, "\r\n "

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    const/4 v2, 0x0

    goto :goto_1

    .line 87
    .restart local v3    # "i":I
    :cond_4
    invoke-virtual {p1, v0, v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    goto :goto_3
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 94
    if-ne p0, p1, :cond_1

    .line 116
    :cond_0
    :goto_0
    return v1

    .line 97
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 98
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 101
    check-cast v0, Lcom/fsck/k9/autocrypt/AutocryptHeader;

    .line 103
    .local v0, "that":Lcom/fsck/k9/autocrypt/AutocryptHeader;
    iget-boolean v3, p0, Lcom/fsck/k9/autocrypt/AutocryptHeader;->isPreferEncryptMutual:Z

    iget-boolean v4, v0, Lcom/fsck/k9/autocrypt/AutocryptHeader;->isPreferEncryptMutual:Z

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 104
    goto :goto_0

    .line 106
    :cond_4
    iget-object v3, p0, Lcom/fsck/k9/autocrypt/AutocryptHeader;->keyData:[B

    iget-object v4, v0, Lcom/fsck/k9/autocrypt/AutocryptHeader;->keyData:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 107
    goto :goto_0

    .line 109
    :cond_5
    iget-object v3, p0, Lcom/fsck/k9/autocrypt/AutocryptHeader;->addr:Ljava/lang/String;

    iget-object v4, v0, Lcom/fsck/k9/autocrypt/AutocryptHeader;->addr:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    move v1, v2

    .line 110
    goto :goto_0

    .line 112
    :cond_6
    iget-object v3, p0, Lcom/fsck/k9/autocrypt/AutocryptHeader;->parameters:Ljava/util/Map;

    iget-object v4, v0, Lcom/fsck/k9/autocrypt/AutocryptHeader;->parameters:Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 113
    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 121
    iget-object v1, p0, Lcom/fsck/k9/autocrypt/AutocryptHeader;->keyData:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    .line 122
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/fsck/k9/autocrypt/AutocryptHeader;->addr:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 123
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/fsck/k9/autocrypt/AutocryptHeader;->parameters:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 124
    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v1, p0, Lcom/fsck/k9/autocrypt/AutocryptHeader;->isPreferEncryptMutual:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    add-int v0, v2, v1

    .line 125
    return v0

    .line 124
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method toRawHeaderString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x3d

    .line 45
    iget-object v1, p0, Lcom/fsck/k9/autocrypt/AutocryptHeader;->parameters:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 46
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "arbitrary parameters not supported"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 49
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "Autocrypt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    const-string v1, "addr"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fsck/k9/autocrypt/AutocryptHeader;->addr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    iget-boolean v1, p0, Lcom/fsck/k9/autocrypt/AutocryptHeader;->isPreferEncryptMutual:Z

    if-eqz v1, :cond_1

    .line 53
    const-string v1, "prefer-encrypt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 54
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mutual"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    :cond_1
    const-string v1, "keydata"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-direct {p0, v0}, Lcom/fsck/k9/autocrypt/AutocryptHeader;->appendBase64KeyData(Ljava/lang/StringBuilder;)V

    .line 60
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

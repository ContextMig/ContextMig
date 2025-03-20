.class final Lorg/openintents/openpgp/OpenPgpDecryptionResult$1;
.super Ljava/lang/Object;
.source "OpenPgpDecryptionResult.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openintents/openpgp/OpenPgpDecryptionResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lorg/openintents/openpgp/OpenPgpDecryptionResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 93
    invoke-virtual {p0, p1}, Lorg/openintents/openpgp/OpenPgpDecryptionResult$1;->createFromParcel(Landroid/os/Parcel;)Lorg/openintents/openpgp/OpenPgpDecryptionResult;

    move-result-object v0

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lorg/openintents/openpgp/OpenPgpDecryptionResult;
    .locals 8
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x0

    const/4 v7, 0x1

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 96
    .local v5, "version":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 97
    .local v1, "parcelableSize":I
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    .line 99
    .local v4, "startPosition":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 100
    .local v2, "result":I
    if-le v5, v7, :cond_1

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 101
    .local v3, "sessionKey":[B
    :goto_0
    if-le v5, v7, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 103
    .local v0, "decryptedSessionKey":[B
    :cond_0
    new-instance v6, Lorg/openintents/openpgp/OpenPgpDecryptionResult;

    invoke-direct {v6, v2, v3, v0}, Lorg/openintents/openpgp/OpenPgpDecryptionResult;-><init>(I[B[B)V

    .line 106
    .local v6, "vr":Lorg/openintents/openpgp/OpenPgpDecryptionResult;
    add-int v7, v4, v1

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 108
    return-object v6

    .end local v0    # "decryptedSessionKey":[B
    .end local v3    # "sessionKey":[B
    .end local v6    # "vr":Lorg/openintents/openpgp/OpenPgpDecryptionResult;
    :cond_1
    move-object v3, v0

    .line 100
    goto :goto_0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 93
    invoke-virtual {p0, p1}, Lorg/openintents/openpgp/OpenPgpDecryptionResult$1;->newArray(I)[Lorg/openintents/openpgp/OpenPgpDecryptionResult;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lorg/openintents/openpgp/OpenPgpDecryptionResult;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 112
    new-array v0, p1, [Lorg/openintents/openpgp/OpenPgpDecryptionResult;

    return-object v0
.end method

.class final Lorg/openintents/openpgp/OpenPgpError$1;
.super Ljava/lang/Object;
.source "OpenPgpError.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openintents/openpgp/OpenPgpError;
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
        "Lorg/openintents/openpgp/OpenPgpError;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 99
    invoke-virtual {p0, p1}, Lorg/openintents/openpgp/OpenPgpError$1;->createFromParcel(Landroid/os/Parcel;)Lorg/openintents/openpgp/OpenPgpError;

    move-result-object v0

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lorg/openintents/openpgp/OpenPgpError;
    .locals 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 103
    .local v1, "parcelableSize":I
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    .line 105
    .local v2, "startPosition":I
    new-instance v0, Lorg/openintents/openpgp/OpenPgpError;

    invoke-direct {v0}, Lorg/openintents/openpgp/OpenPgpError;-><init>()V

    .line 106
    .local v0, "error":Lorg/openintents/openpgp/OpenPgpError;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v0, Lorg/openintents/openpgp/OpenPgpError;->errorId:I

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lorg/openintents/openpgp/OpenPgpError;->message:Ljava/lang/String;

    .line 110
    add-int v3, v2, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 112
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 99
    invoke-virtual {p0, p1}, Lorg/openintents/openpgp/OpenPgpError$1;->newArray(I)[Lorg/openintents/openpgp/OpenPgpError;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lorg/openintents/openpgp/OpenPgpError;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 116
    new-array v0, p1, [Lorg/openintents/openpgp/OpenPgpError;

    return-object v0
.end method

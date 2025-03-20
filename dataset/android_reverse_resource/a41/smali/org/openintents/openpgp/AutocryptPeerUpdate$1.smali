.class final Lorg/openintents/openpgp/AutocryptPeerUpdate$1;
.super Ljava/lang/Object;
.source "AutocryptPeerUpdate.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openintents/openpgp/AutocryptPeerUpdate;
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
        "Lorg/openintents/openpgp/AutocryptPeerUpdate;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 109
    invoke-virtual {p0, p1}, Lorg/openintents/openpgp/AutocryptPeerUpdate$1;->createFromParcel(Landroid/os/Parcel;)Lorg/openintents/openpgp/AutocryptPeerUpdate;

    move-result-object v0

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lorg/openintents/openpgp/AutocryptPeerUpdate;
    .locals 5
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 112
    .local v2, "version":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 113
    .local v0, "parcelableSize":I
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 115
    .local v1, "startPosition":I
    new-instance v3, Lorg/openintents/openpgp/AutocryptPeerUpdate;

    const/4 v4, 0x0

    invoke-direct {v3, p1, v2, v4}, Lorg/openintents/openpgp/AutocryptPeerUpdate;-><init>(Landroid/os/Parcel;ILorg/openintents/openpgp/AutocryptPeerUpdate$1;)V

    .line 118
    .local v3, "vr":Lorg/openintents/openpgp/AutocryptPeerUpdate;
    add-int v4, v1, v0

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 120
    return-object v3
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 109
    invoke-virtual {p0, p1}, Lorg/openintents/openpgp/AutocryptPeerUpdate$1;->newArray(I)[Lorg/openintents/openpgp/AutocryptPeerUpdate;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lorg/openintents/openpgp/AutocryptPeerUpdate;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 124
    new-array v0, p1, [Lorg/openintents/openpgp/AutocryptPeerUpdate;

    return-object v0
.end method

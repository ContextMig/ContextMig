.class public Lorg/openintents/openpgp/AutocryptPeerUpdate;
.super Ljava/lang/Object;
.source "AutocryptPeerUpdate.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openintents/openpgp/AutocryptPeerUpdate$PreferEncrypt;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lorg/openintents/openpgp/AutocryptPeerUpdate;",
            ">;"
        }
    .end annotation
.end field

.field private static final PARCELABLE_VERSION:I = 0x1


# instance fields
.field private final effectiveDate:Ljava/util/Date;

.field private final keyData:[B

.field private final preferEncrypt:Lorg/openintents/openpgp/AutocryptPeerUpdate$PreferEncrypt;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 109
    new-instance v0, Lorg/openintents/openpgp/AutocryptPeerUpdate$1;

    invoke-direct {v0}, Lorg/openintents/openpgp/AutocryptPeerUpdate$1;-><init>()V

    sput-object v0, Lorg/openintents/openpgp/AutocryptPeerUpdate;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "source"    # Landroid/os/Parcel;
    .param p2, "version"    # I

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lorg/openintents/openpgp/AutocryptPeerUpdate;->keyData:[B

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    :goto_0
    iput-object v0, p0, Lorg/openintents/openpgp/AutocryptPeerUpdate;->effectiveDate:Ljava/util/Date;

    .line 50
    invoke-static {}, Lorg/openintents/openpgp/AutocryptPeerUpdate$PreferEncrypt;->values()[Lorg/openintents/openpgp/AutocryptPeerUpdate$PreferEncrypt;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lorg/openintents/openpgp/AutocryptPeerUpdate;->preferEncrypt:Lorg/openintents/openpgp/AutocryptPeerUpdate$PreferEncrypt;

    .line 51
    return-void

    .line 49
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;ILorg/openintents/openpgp/AutocryptPeerUpdate$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lorg/openintents/openpgp/AutocryptPeerUpdate$1;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lorg/openintents/openpgp/AutocryptPeerUpdate;-><init>(Landroid/os/Parcel;I)V

    return-void
.end method

.method private constructor <init>([BLjava/util/Date;Lorg/openintents/openpgp/AutocryptPeerUpdate$PreferEncrypt;)V
    .locals 0
    .param p1, "keyData"    # [B
    .param p2, "effectiveDate"    # Ljava/util/Date;
    .param p3, "preferEncrypt"    # Lorg/openintents/openpgp/AutocryptPeerUpdate$PreferEncrypt;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lorg/openintents/openpgp/AutocryptPeerUpdate;->keyData:[B

    .line 43
    iput-object p2, p0, Lorg/openintents/openpgp/AutocryptPeerUpdate;->effectiveDate:Ljava/util/Date;

    .line 44
    iput-object p3, p0, Lorg/openintents/openpgp/AutocryptPeerUpdate;->preferEncrypt:Lorg/openintents/openpgp/AutocryptPeerUpdate$PreferEncrypt;

    .line 45
    return-void
.end method

.method public static create([BLjava/util/Date;Z)Lorg/openintents/openpgp/AutocryptPeerUpdate;
    .locals 2
    .param p0, "keyData"    # [B
    .param p1, "timestamp"    # Ljava/util/Date;
    .param p2, "isMutual"    # Z

    .prologue
    .line 55
    new-instance v1, Lorg/openintents/openpgp/AutocryptPeerUpdate;

    if-eqz p2, :cond_0

    sget-object v0, Lorg/openintents/openpgp/AutocryptPeerUpdate$PreferEncrypt;->MUTUAL:Lorg/openintents/openpgp/AutocryptPeerUpdate$PreferEncrypt;

    :goto_0
    invoke-direct {v1, p0, p1, v0}, Lorg/openintents/openpgp/AutocryptPeerUpdate;-><init>([BLjava/util/Date;Lorg/openintents/openpgp/AutocryptPeerUpdate$PreferEncrypt;)V

    return-object v1

    :cond_0
    sget-object v0, Lorg/openintents/openpgp/AutocryptPeerUpdate$PreferEncrypt;->NOPREFERENCE:Lorg/openintents/openpgp/AutocryptPeerUpdate$PreferEncrypt;

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    return v0
.end method

.method public getEffectiveDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lorg/openintents/openpgp/AutocryptPeerUpdate;->effectiveDate:Ljava/util/Date;

    return-object v0
.end method

.method public getKeyData()[B
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lorg/openintents/openpgp/AutocryptPeerUpdate;->keyData:[B

    return-object v0
.end method

.method public getPreferEncrypt()Lorg/openintents/openpgp/AutocryptPeerUpdate$PreferEncrypt;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lorg/openintents/openpgp/AutocryptPeerUpdate;->preferEncrypt:Lorg/openintents/openpgp/AutocryptPeerUpdate$PreferEncrypt;

    return-object v0
.end method

.method public hasKeyData()Z
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lorg/openintents/openpgp/AutocryptPeerUpdate;->keyData:[B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 84
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 88
    .local v1, "sizePosition":I
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    .line 92
    .local v2, "startPosition":I
    iget-object v3, p0, Lorg/openintents/openpgp/AutocryptPeerUpdate;->keyData:[B

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 93
    iget-object v3, p0, Lorg/openintents/openpgp/AutocryptPeerUpdate;->effectiveDate:Ljava/util/Date;

    if-eqz v3, :cond_0

    .line 94
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    iget-object v3, p0, Lorg/openintents/openpgp/AutocryptPeerUpdate;->effectiveDate:Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 100
    :goto_0
    iget-object v3, p0, Lorg/openintents/openpgp/AutocryptPeerUpdate;->preferEncrypt:Lorg/openintents/openpgp/AutocryptPeerUpdate$PreferEncrypt;

    invoke-virtual {v3}, Lorg/openintents/openpgp/AutocryptPeerUpdate$PreferEncrypt;->ordinal()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    sub-int v0, v3, v2

    .line 104
    .local v0, "parcelableSize":I
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 105
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    add-int v3, v2, v0

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 107
    return-void

    .line 97
    .end local v0    # "parcelableSize":I
    :cond_0
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method

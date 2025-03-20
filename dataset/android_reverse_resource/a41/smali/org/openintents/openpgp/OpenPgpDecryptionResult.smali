.class public Lorg/openintents/openpgp/OpenPgpDecryptionResult;
.super Ljava/lang/Object;
.source "OpenPgpDecryptionResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lorg/openintents/openpgp/OpenPgpDecryptionResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final PARCELABLE_VERSION:I = 0x2

.field public static final RESULT_ENCRYPTED:I = 0x1

.field public static final RESULT_INSECURE:I = 0x0

.field public static final RESULT_NOT_ENCRYPTED:I = -0x1


# instance fields
.field public final decryptedSessionKey:[B

.field public final result:I

.field public final sessionKey:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 93
    new-instance v0, Lorg/openintents/openpgp/OpenPgpDecryptionResult$1;

    invoke-direct {v0}, Lorg/openintents/openpgp/OpenPgpDecryptionResult$1;-><init>()V

    sput-object v0, Lorg/openintents/openpgp/OpenPgpDecryptionResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "result"    # I

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput p1, p0, Lorg/openintents/openpgp/OpenPgpDecryptionResult;->result:I

    .line 47
    iput-object v0, p0, Lorg/openintents/openpgp/OpenPgpDecryptionResult;->sessionKey:[B

    .line 48
    iput-object v0, p0, Lorg/openintents/openpgp/OpenPgpDecryptionResult;->decryptedSessionKey:[B

    .line 49
    return-void
.end method

.method public constructor <init>(I[B[B)V
    .locals 3
    .param p1, "result"    # I
    .param p2, "sessionKey"    # [B
    .param p3, "decryptedSessionKey"    # [B

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput p1, p0, Lorg/openintents/openpgp/OpenPgpDecryptionResult;->result:I

    .line 53
    if-nez p2, :cond_0

    move v2, v0

    :goto_0
    if-nez p3, :cond_1

    :goto_1
    if-eq v2, v0, :cond_2

    .line 54
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "sessionkey must be null iff decryptedSessionKey is null"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    move v2, v1

    .line 53
    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    .line 56
    :cond_2
    iput-object p2, p0, Lorg/openintents/openpgp/OpenPgpDecryptionResult;->sessionKey:[B

    .line 57
    iput-object p3, p0, Lorg/openintents/openpgp/OpenPgpDecryptionResult;->decryptedSessionKey:[B

    .line 58
    return-void
.end method

.method public constructor <init>(Lorg/openintents/openpgp/OpenPgpDecryptionResult;)V
    .locals 1
    .param p1, "b"    # Lorg/openintents/openpgp/OpenPgpDecryptionResult;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iget v0, p1, Lorg/openintents/openpgp/OpenPgpDecryptionResult;->result:I

    iput v0, p0, Lorg/openintents/openpgp/OpenPgpDecryptionResult;->result:I

    .line 62
    iget-object v0, p1, Lorg/openintents/openpgp/OpenPgpDecryptionResult;->sessionKey:[B

    iput-object v0, p0, Lorg/openintents/openpgp/OpenPgpDecryptionResult;->sessionKey:[B

    .line 63
    iget-object v0, p1, Lorg/openintents/openpgp/OpenPgpDecryptionResult;->decryptedSessionKey:[B

    iput-object v0, p0, Lorg/openintents/openpgp/OpenPgpDecryptionResult;->decryptedSessionKey:[B

    .line 64
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method public getResult()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lorg/openintents/openpgp/OpenPgpDecryptionResult;->result:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\nresult: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/openintents/openpgp/OpenPgpDecryptionResult;->result:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 75
    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 79
    .local v1, "sizePosition":I
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    .line 82
    .local v2, "startPosition":I
    iget v3, p0, Lorg/openintents/openpgp/OpenPgpDecryptionResult;->result:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    iget-object v3, p0, Lorg/openintents/openpgp/OpenPgpDecryptionResult;->sessionKey:[B

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 85
    iget-object v3, p0, Lorg/openintents/openpgp/OpenPgpDecryptionResult;->decryptedSessionKey:[B

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    sub-int v0, v3, v2

    .line 88
    .local v0, "parcelableSize":I
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 89
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    add-int v3, v2, v0

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 91
    return-void
.end method

.class public Lorg/openintents/openpgp/OpenPgpError;
.super Ljava/lang/Object;
.source "OpenPgpError.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CLIENT_SIDE_ERROR:I = -0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lorg/openintents/openpgp/OpenPgpError;",
            ">;"
        }
    .end annotation
.end field

.field public static final GENERIC_ERROR:I = 0x0

.field public static final INCOMPATIBLE_API_VERSIONS:I = 0x1

.field public static final NO_OR_WRONG_PASSPHRASE:I = 0x2

.field public static final NO_USER_IDS:I = 0x3

.field public static final OPPORTUNISTIC_MISSING_KEYS:I = 0x4

.field public static final PARCELABLE_VERSION:I = 0x1


# instance fields
.field errorId:I

.field message:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 99
    new-instance v0, Lorg/openintents/openpgp/OpenPgpError$1;

    invoke-direct {v0}, Lorg/openintents/openpgp/OpenPgpError$1;-><init>()V

    sput-object v0, Lorg/openintents/openpgp/OpenPgpError;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "errorId"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput p1, p0, Lorg/openintents/openpgp/OpenPgpError;->errorId:I

    .line 46
    iput-object p2, p0, Lorg/openintents/openpgp/OpenPgpError;->message:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public constructor <init>(Lorg/openintents/openpgp/OpenPgpError;)V
    .locals 1
    .param p1, "b"    # Lorg/openintents/openpgp/OpenPgpError;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iget v0, p1, Lorg/openintents/openpgp/OpenPgpError;->errorId:I

    iput v0, p0, Lorg/openintents/openpgp/OpenPgpError;->errorId:I

    .line 51
    iget-object v0, p1, Lorg/openintents/openpgp/OpenPgpError;->message:Ljava/lang/String;

    iput-object v0, p0, Lorg/openintents/openpgp/OpenPgpError;->message:Ljava/lang/String;

    .line 52
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method public getErrorId()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lorg/openintents/openpgp/OpenPgpError;->errorId:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lorg/openintents/openpgp/OpenPgpError;->message:Ljava/lang/String;

    return-object v0
.end method

.method public setErrorId(I)V
    .locals 0
    .param p1, "errorId"    # I

    .prologue
    .line 59
    iput p1, p0, Lorg/openintents/openpgp/OpenPgpError;->errorId:I

    .line 60
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 67
    iput-object p1, p0, Lorg/openintents/openpgp/OpenPgpError;->message:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OpenPGP-Api Error ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/openintents/openpgp/OpenPgpError;->errorId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/openintents/openpgp/OpenPgpError;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
    .line 83
    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 87
    .local v1, "sizePosition":I
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    .line 90
    .local v2, "startPosition":I
    iget v3, p0, Lorg/openintents/openpgp/OpenPgpError;->errorId:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    iget-object v3, p0, Lorg/openintents/openpgp/OpenPgpError;->message:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    sub-int v0, v3, v2

    .line 94
    .local v0, "parcelableSize":I
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 95
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    add-int v3, v2, v0

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 97
    return-void
.end method

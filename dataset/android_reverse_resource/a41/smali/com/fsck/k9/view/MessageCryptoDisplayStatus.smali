.class public final enum Lcom/fsck/k9/view/MessageCryptoDisplayStatus;
.super Ljava/lang/Enum;
.source "MessageCryptoDisplayStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fsck/k9/view/MessageCryptoDisplayStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

.field public static final enum CANCELLED:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

.field public static final enum DISABLED:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

.field public static final enum ENCRYPTED_ERROR:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

.field public static final enum ENCRYPTED_INSECURE:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

.field public static final enum ENCRYPTED_NO_PROVIDER:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

.field public static final enum ENCRYPTED_SIGN_ERROR:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

.field public static final enum ENCRYPTED_SIGN_EXPIRED:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

.field public static final enum ENCRYPTED_SIGN_INSECURE:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

.field public static final enum ENCRYPTED_SIGN_MISMATCH:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

.field public static final enum ENCRYPTED_SIGN_REVOKED:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

.field public static final enum ENCRYPTED_SIGN_UNKNOWN:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

.field public static final enum ENCRYPTED_SIGN_UNVERIFIED:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

.field public static final enum ENCRYPTED_SIGN_VERIFIED:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

.field public static final enum ENCRYPTED_UNSIGNED:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

.field public static final enum INCOMPLETE_ENCRYPTED:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

.field public static final enum INCOMPLETE_SIGNED:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

.field public static final enum LOADING:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

.field public static final enum UNENCRYPTED_SIGN_ERROR:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

.field public static final enum UNENCRYPTED_SIGN_EXPIRED:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

.field public static final enum UNENCRYPTED_SIGN_INSECURE:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

.field public static final enum UNENCRYPTED_SIGN_MISMATCH:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

.field public static final enum UNENCRYPTED_SIGN_REVOKED:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

.field public static final enum UNENCRYPTED_SIGN_UNKNOWN:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

.field public static final enum UNENCRYPTED_SIGN_UNVERIFIED:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

.field public static final enum UNENCRYPTED_SIGN_VERIFIED:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

.field public static final enum UNSUPPORTED_ENCRYPTED:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

.field public static final enum UNSUPPORTED_SIGNED:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;


# instance fields
.field public final colorAttr:I
    .annotation build Landroid/support/annotation/AttrRes;
    .end annotation
.end field

.field public final statusDotsRes:Ljava/lang/Integer;
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation
.end field

.field public final statusIconRes:I
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation
.end field

.field public final textResBottom:Ljava/lang/Integer;
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation
.end field

.field public final textResTop:Ljava/lang/Integer;
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    .line 16
    new-instance v0, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    const-string v1, "LOADING"

    const/4 v2, 0x0

    const v3, 0x7f010042

    const v4, 0x7f02008e

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->LOADING:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    .line 21
    new-instance v0, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    const-string v1, "CANCELLED"

    const/4 v2, 0x1

    const v3, 0x7f01003d

    const v4, 0x7f02008e

    const v5, 0x7f070177

    invoke-direct/range {v0 .. v5}, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->CANCELLED:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    .line 27
    new-instance v0, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    const-string v1, "DISABLED"

    const/4 v2, 0x2

    const v3, 0x7f010042

    const v4, 0x7f020090

    const v5, 0x7f070178

    invoke-direct/range {v0 .. v5}, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->DISABLED:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    .line 33
    new-instance v0, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    const-string v1, "UNENCRYPTED_SIGN_UNKNOWN"

    const/4 v2, 0x3

    const v3, 0x7f01003d

    const v4, 0x7f02009b

    const v5, 0x7f02008a

    .line 35
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const v6, 0x7f070189

    const v7, 0x7f070184

    .line 36
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;-><init>(Ljava/lang/String;IIILjava/lang/Integer;ILjava/lang/Integer;)V

    sput-object v0, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->UNENCRYPTED_SIGN_UNKNOWN:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    .line 39
    new-instance v0, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    const-string v1, "UNENCRYPTED_SIGN_VERIFIED"

    const/4 v2, 0x4

    const v3, 0x7f010041

    const v4, 0x7f02009c

    const v5, 0x7f02009a

    .line 41
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const v6, 0x7f070189

    const v7, 0x7f070186

    .line 42
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;-><init>(Ljava/lang/String;IIILjava/lang/Integer;ILjava/lang/Integer;)V

    sput-object v0, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->UNENCRYPTED_SIGN_VERIFIED:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    .line 44
    new-instance v0, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    const-string v1, "UNENCRYPTED_SIGN_UNVERIFIED"

    const/4 v2, 0x5

    const v3, 0x7f01003e

    const v4, 0x7f02009c

    const v5, 0x7f020099

    .line 46
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const v6, 0x7f070189

    const v7, 0x7f070185

    .line 47
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;-><init>(Ljava/lang/String;IIILjava/lang/Integer;ILjava/lang/Integer;)V

    sput-object v0, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->UNENCRYPTED_SIGN_UNVERIFIED:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    .line 49
    new-instance v0, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    const-string v1, "UNENCRYPTED_SIGN_MISMATCH"

    const/4 v2, 0x6

    const v3, 0x7f01003f

    const v4, 0x7f02009c

    const v5, 0x7f020098

    .line 51
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const v6, 0x7f070189

    const v7, 0x7f070182

    .line 52
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;-><init>(Ljava/lang/String;IIILjava/lang/Integer;ILjava/lang/Integer;)V

    sput-object v0, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->UNENCRYPTED_SIGN_MISMATCH:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    .line 54
    new-instance v0, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    const-string v1, "UNENCRYPTED_SIGN_EXPIRED"

    const/4 v2, 0x7

    const v3, 0x7f01003f

    const v4, 0x7f02009c

    const v5, 0x7f020098

    .line 56
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const v6, 0x7f070189

    const v7, 0x7f07017f

    .line 57
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;-><init>(Ljava/lang/String;IIILjava/lang/Integer;ILjava/lang/Integer;)V

    sput-object v0, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->UNENCRYPTED_SIGN_EXPIRED:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    .line 59
    new-instance v0, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    const-string v1, "UNENCRYPTED_SIGN_REVOKED"

    const/16 v2, 0x8

    const v3, 0x7f01003f

    const v4, 0x7f02009c

    const v5, 0x7f020098

    .line 61
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const v6, 0x7f070189

    const v7, 0x7f070183

    .line 62
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;-><init>(Ljava/lang/String;IIILjava/lang/Integer;ILjava/lang/Integer;)V

    sput-object v0, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->UNENCRYPTED_SIGN_REVOKED:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    .line 64
    new-instance v0, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    const-string v1, "UNENCRYPTED_SIGN_INSECURE"

    const/16 v2, 0x9

    const v3, 0x7f01003f

    const v4, 0x7f02009c

    const v5, 0x7f020098

    .line 66
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const v6, 0x7f070189

    const v7, 0x7f070181

    .line 67
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;-><init>(Ljava/lang/String;IIILjava/lang/Integer;ILjava/lang/Integer;)V

    sput-object v0, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->UNENCRYPTED_SIGN_INSECURE:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    .line 69
    new-instance v0, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    const-string v1, "UNENCRYPTED_SIGN_ERROR"

    const/16 v2, 0xa

    const v3, 0x7f01003f

    const v4, 0x7f02009c

    const v5, 0x7f02008a

    .line 71
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const v6, 0x7f070188

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;-><init>(Ljava/lang/String;IIILjava/lang/Integer;ILjava/lang/Integer;)V

    sput-object v0, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->UNENCRYPTED_SIGN_ERROR:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    .line 75
    new-instance v0, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    const-string v1, "ENCRYPTED_SIGN_UNKNOWN"

    const/16 v2, 0xb

    const v3, 0x7f01003d

    const v4, 0x7f020097

    const v5, 0x7f02008a

    .line 77
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const v6, 0x7f070187

    const v7, 0x7f070184

    .line 78
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;-><init>(Ljava/lang/String;IIILjava/lang/Integer;ILjava/lang/Integer;)V

    sput-object v0, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->ENCRYPTED_SIGN_UNKNOWN:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    .line 81
    new-instance v0, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    const-string v1, "ENCRYPTED_SIGN_VERIFIED"

    const/16 v2, 0xc

    const v3, 0x7f010040

    const v4, 0x7f02008e

    const v5, 0x7f02009a

    .line 83
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const v6, 0x7f070187

    const v7, 0x7f070186

    .line 84
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;-><init>(Ljava/lang/String;IIILjava/lang/Integer;ILjava/lang/Integer;)V

    sput-object v0, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->ENCRYPTED_SIGN_VERIFIED:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    .line 86
    new-instance v0, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    const-string v1, "ENCRYPTED_SIGN_UNVERIFIED"

    const/16 v2, 0xd

    const v3, 0x7f01003e

    const v4, 0x7f02008e

    const v5, 0x7f020099

    .line 88
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const v6, 0x7f070187

    const v7, 0x7f070185

    .line 89
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;-><init>(Ljava/lang/String;IIILjava/lang/Integer;ILjava/lang/Integer;)V

    sput-object v0, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->ENCRYPTED_SIGN_UNVERIFIED:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    .line 91
    new-instance v0, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    const-string v1, "ENCRYPTED_SIGN_MISMATCH"

    const/16 v2, 0xe

    const v3, 0x7f01003f

    const v4, 0x7f02008e

    const v5, 0x7f020098

    .line 93
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const v6, 0x7f070187

    const v7, 0x7f070182

    .line 94
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;-><init>(Ljava/lang/String;IIILjava/lang/Integer;ILjava/lang/Integer;)V

    sput-object v0, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->ENCRYPTED_SIGN_MISMATCH:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    .line 96
    new-instance v0, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    const-string v1, "ENCRYPTED_SIGN_EXPIRED"

    const/16 v2, 0xf

    const v3, 0x7f01003f

    const v4, 0x7f02008e

    const v5, 0x7f020098

    .line 98
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const v6, 0x7f070187

    const v7, 0x7f07017f

    .line 99
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;-><init>(Ljava/lang/String;IIILjava/lang/Integer;ILjava/lang/Integer;)V

    sput-object v0, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->ENCRYPTED_SIGN_EXPIRED:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    .line 101
    new-instance v0, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    const-string v1, "ENCRYPTED_SIGN_REVOKED"

    const/16 v2, 0x10

    const v3, 0x7f01003f

    const v4, 0x7f02008e

    const v5, 0x7f020098

    .line 103
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const v6, 0x7f070187

    const v7, 0x7f070183

    .line 104
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;-><init>(Ljava/lang/String;IIILjava/lang/Integer;ILjava/lang/Integer;)V

    sput-object v0, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->ENCRYPTED_SIGN_REVOKED:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    .line 106
    new-instance v0, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    const-string v1, "ENCRYPTED_SIGN_INSECURE"

    const/16 v2, 0x11

    const v3, 0x7f01003f

    const v4, 0x7f02008e

    const v5, 0x7f020098

    .line 108
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const v6, 0x7f070187

    const v7, 0x7f070181

    .line 109
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;-><init>(Ljava/lang/String;IIILjava/lang/Integer;ILjava/lang/Integer;)V

    sput-object v0, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->ENCRYPTED_SIGN_INSECURE:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    .line 111
    new-instance v0, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    const-string v1, "ENCRYPTED_UNSIGNED"

    const/16 v2, 0x12

    const v3, 0x7f01003f

    const v4, 0x7f02008e

    const v5, 0x7f02008a

    .line 113
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const v6, 0x7f07017c

    const v7, 0x7f07018a

    .line 114
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;-><init>(Ljava/lang/String;IIILjava/lang/Integer;ILjava/lang/Integer;)V

    sput-object v0, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->ENCRYPTED_UNSIGNED:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    .line 116
    new-instance v0, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    const-string v1, "ENCRYPTED_SIGN_ERROR"

    const/16 v2, 0x13

    const v3, 0x7f01003f

    const v4, 0x7f02008e

    const v5, 0x7f02008a

    .line 118
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const v6, 0x7f070187

    const v7, 0x7f07017e

    .line 119
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;-><init>(Ljava/lang/String;IIILjava/lang/Integer;ILjava/lang/Integer;)V

    sput-object v0, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->ENCRYPTED_SIGN_ERROR:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    .line 122
    new-instance v0, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    const-string v1, "ENCRYPTED_ERROR"

    const/16 v2, 0x14

    const v3, 0x7f01003f

    const v4, 0x7f020094

    const v5, 0x7f070179

    invoke-direct/range {v0 .. v5}, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->ENCRYPTED_ERROR:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    .line 128
    new-instance v0, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    const-string v1, "ENCRYPTED_INSECURE"

    const/16 v2, 0x15

    const v3, 0x7f01003f

    const v4, 0x7f020094

    const v5, 0x7f07017a

    invoke-direct/range {v0 .. v5}, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->ENCRYPTED_INSECURE:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    .line 134
    new-instance v0, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    const-string v1, "INCOMPLETE_ENCRYPTED"

    const/16 v2, 0x16

    const v3, 0x7f01003d

    const v4, 0x7f020097

    const v5, 0x7f07017d

    invoke-direct/range {v0 .. v5}, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->INCOMPLETE_ENCRYPTED:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    .line 139
    new-instance v0, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    const-string v1, "INCOMPLETE_SIGNED"

    const/16 v2, 0x17

    const v3, 0x7f01003d

    const v4, 0x7f02009b

    const v5, 0x7f02008a

    .line 141
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const v6, 0x7f070189

    const v7, 0x7f070180

    .line 142
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;-><init>(Ljava/lang/String;IIILjava/lang/Integer;ILjava/lang/Integer;)V

    sput-object v0, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->INCOMPLETE_SIGNED:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    .line 145
    new-instance v0, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    const-string v1, "ENCRYPTED_NO_PROVIDER"

    const/16 v2, 0x18

    const v3, 0x7f01003f

    const v4, 0x7f020094

    const v5, 0x7f07018b

    invoke-direct/range {v0 .. v5}, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->ENCRYPTED_NO_PROVIDER:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    .line 151
    new-instance v0, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    const-string v1, "UNSUPPORTED_ENCRYPTED"

    const/16 v2, 0x19

    const v3, 0x7f01003f

    const v4, 0x7f020094

    const v5, 0x7f07018b

    invoke-direct/range {v0 .. v5}, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->UNSUPPORTED_ENCRYPTED:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    .line 156
    new-instance v0, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    const-string v1, "UNSUPPORTED_SIGNED"

    const/16 v2, 0x1a

    const v3, 0x7f010042

    const v4, 0x7f020090

    const v5, 0x7f07018c

    invoke-direct/range {v0 .. v5}, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->UNSUPPORTED_SIGNED:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    .line 15
    const/16 v0, 0x1b

    new-array v0, v0, [Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    const/4 v1, 0x0

    sget-object v2, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->LOADING:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->CANCELLED:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->DISABLED:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->UNENCRYPTED_SIGN_UNKNOWN:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->UNENCRYPTED_SIGN_VERIFIED:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->UNENCRYPTED_SIGN_UNVERIFIED:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->UNENCRYPTED_SIGN_MISMATCH:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->UNENCRYPTED_SIGN_EXPIRED:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->UNENCRYPTED_SIGN_REVOKED:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->UNENCRYPTED_SIGN_INSECURE:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->UNENCRYPTED_SIGN_ERROR:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->ENCRYPTED_SIGN_UNKNOWN:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->ENCRYPTED_SIGN_VERIFIED:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->ENCRYPTED_SIGN_UNVERIFIED:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->ENCRYPTED_SIGN_MISMATCH:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->ENCRYPTED_SIGN_EXPIRED:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->ENCRYPTED_SIGN_REVOKED:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->ENCRYPTED_SIGN_INSECURE:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->ENCRYPTED_UNSIGNED:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->ENCRYPTED_SIGN_ERROR:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->ENCRYPTED_ERROR:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->ENCRYPTED_INSECURE:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->INCOMPLETE_ENCRYPTED:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->INCOMPLETE_SIGNED:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->ENCRYPTED_NO_PROVIDER:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->UNSUPPORTED_ENCRYPTED:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->UNSUPPORTED_SIGNED:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    aput-object v2, v0, v1

    sput-object v0, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->$VALUES:[Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/AttrRes;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p3, "colorAttr"    # I
    .param p4, "statusIconRes"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 190
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 191
    iput p3, p0, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->colorAttr:I

    .line 192
    iput p4, p0, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->statusIconRes:I

    .line 193
    iput-object v0, p0, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->statusDotsRes:Ljava/lang/Integer;

    .line 195
    iput-object v0, p0, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->textResTop:Ljava/lang/Integer;

    .line 196
    iput-object v0, p0, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->textResBottom:Ljava/lang/Integer;

    .line 197
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIII)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/AttrRes;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p3, "colorAttr"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p4, "statusIconRes"    # I
    .param p5, "textResTop"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 181
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 182
    iput p3, p0, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->colorAttr:I

    .line 183
    iput p4, p0, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->statusIconRes:I

    .line 184
    iput-object v1, p0, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->statusDotsRes:Ljava/lang/Integer;

    .line 186
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->textResTop:Ljava/lang/Integer;

    .line 187
    iput-object v1, p0, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->textResBottom:Ljava/lang/Integer;

    .line 188
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIILjava/lang/Integer;ILjava/lang/Integer;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/AttrRes;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p3, "colorAttr"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p4, "statusIconRes"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p5, "statusDotsRes"    # Ljava/lang/Integer;
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p6, "textResTop"    # I
    .param p7, "textResBottom"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/Integer;",
            "I",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 172
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 173
    iput p3, p0, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->colorAttr:I

    .line 174
    iput p4, p0, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->statusIconRes:I

    .line 175
    iput-object p5, p0, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->statusDotsRes:Ljava/lang/Integer;

    .line 177
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->textResTop:Ljava/lang/Integer;

    .line 178
    iput-object p7, p0, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->textResBottom:Ljava/lang/Integer;

    .line 179
    return-void
.end method

.method public static fromResultAnnotation(Lcom/fsck/k9/mailstore/CryptoResultAnnotation;)Lcom/fsck/k9/view/MessageCryptoDisplayStatus;
    .locals 2
    .param p0, "cryptoResult"    # Lcom/fsck/k9/mailstore/CryptoResultAnnotation;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 201
    if-nez p0, :cond_0

    .line 202
    sget-object v0, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->DISABLED:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    .line 231
    :goto_0
    return-object v0

    .line 205
    :cond_0
    sget-object v0, Lcom/fsck/k9/view/MessageCryptoDisplayStatus$1;->$SwitchMap$com$fsck$k9$mailstore$CryptoResultAnnotation$CryptoError:[I

    invoke-virtual {p0}, Lcom/fsck/k9/mailstore/CryptoResultAnnotation;->getErrorType()Lcom/fsck/k9/mailstore/CryptoResultAnnotation$CryptoError;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fsck/k9/mailstore/CryptoResultAnnotation$CryptoError;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 233
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unhandled case!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 207
    :pswitch_0
    invoke-static {p0}, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->getDisplayStatusForPgpResult(Lcom/fsck/k9/mailstore/CryptoResultAnnotation;)Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    move-result-object v0

    goto :goto_0

    .line 210
    :pswitch_1
    sget-object v0, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->INCOMPLETE_ENCRYPTED:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    goto :goto_0

    .line 213
    :pswitch_2
    sget-object v0, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->INCOMPLETE_SIGNED:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    goto :goto_0

    .line 216
    :pswitch_3
    sget-object v0, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->UNSUPPORTED_ENCRYPTED:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    goto :goto_0

    .line 219
    :pswitch_4
    sget-object v0, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->UNSUPPORTED_SIGNED:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    goto :goto_0

    .line 222
    :pswitch_5
    sget-object v0, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->CANCELLED:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    goto :goto_0

    .line 225
    :pswitch_6
    sget-object v0, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->UNENCRYPTED_SIGN_ERROR:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    goto :goto_0

    .line 228
    :pswitch_7
    sget-object v0, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->ENCRYPTED_ERROR:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    goto :goto_0

    .line 231
    :pswitch_8
    sget-object v0, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->ENCRYPTED_NO_PROVIDER:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    goto :goto_0

    .line 205
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private static getDisplayStatusForPgpResult(Lcom/fsck/k9/mailstore/CryptoResultAnnotation;)Lcom/fsck/k9/view/MessageCryptoDisplayStatus;
    .locals 5
    .param p0, "cryptoResult"    # Lcom/fsck/k9/mailstore/CryptoResultAnnotation;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 238
    invoke-virtual {p0}, Lcom/fsck/k9/mailstore/CryptoResultAnnotation;->getOpenPgpSignatureResult()Lorg/openintents/openpgp/OpenPgpSignatureResult;

    move-result-object v2

    .line 239
    .local v2, "signatureResult":Lorg/openintents/openpgp/OpenPgpSignatureResult;
    invoke-virtual {p0}, Lcom/fsck/k9/mailstore/CryptoResultAnnotation;->getOpenPgpDecryptionResult()Lorg/openintents/openpgp/OpenPgpDecryptionResult;

    move-result-object v0

    .line 240
    .local v0, "decryptionResult":Lorg/openintents/openpgp/OpenPgpDecryptionResult;
    if-eqz v0, :cond_0

    if-nez v2, :cond_1

    .line 241
    :cond_0
    new-instance v3, Ljava/lang/AssertionError;

    const-string v4, "Both OpenPGP results must be non-null at this point!"

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 244
    :cond_1
    invoke-virtual {v2}, Lorg/openintents/openpgp/OpenPgpSignatureResult;->getResult()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    .line 245
    invoke-virtual {p0}, Lcom/fsck/k9/mailstore/CryptoResultAnnotation;->hasEncapsulatedResult()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 246
    invoke-virtual {p0}, Lcom/fsck/k9/mailstore/CryptoResultAnnotation;->getEncapsulatedResult()Lcom/fsck/k9/mailstore/CryptoResultAnnotation;

    move-result-object v1

    .line 247
    .local v1, "encapsulatedResult":Lcom/fsck/k9/mailstore/CryptoResultAnnotation;
    invoke-virtual {v1}, Lcom/fsck/k9/mailstore/CryptoResultAnnotation;->isOpenPgpResult()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 248
    invoke-virtual {v1}, Lcom/fsck/k9/mailstore/CryptoResultAnnotation;->getOpenPgpSignatureResult()Lorg/openintents/openpgp/OpenPgpSignatureResult;

    move-result-object v2

    .line 249
    if-nez v2, :cond_2

    .line 250
    new-instance v3, Ljava/lang/AssertionError;

    const-string v4, "OpenPGP must contain signature result at this point!"

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 255
    .end local v1    # "encapsulatedResult":Lcom/fsck/k9/mailstore/CryptoResultAnnotation;
    :cond_2
    invoke-virtual {v0}, Lorg/openintents/openpgp/OpenPgpDecryptionResult;->getResult()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 266
    new-instance v3, Ljava/lang/AssertionError;

    const-string v4, "all cases must be handled, this is a bug!"

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 257
    :pswitch_0
    invoke-static {v2}, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->getStatusForPgpUnencryptedResult(Lorg/openintents/openpgp/OpenPgpSignatureResult;)Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    move-result-object v3

    .line 263
    :goto_0
    return-object v3

    .line 260
    :pswitch_1
    invoke-static {v2}, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->getStatusForPgpEncryptedResult(Lorg/openintents/openpgp/OpenPgpSignatureResult;)Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    move-result-object v3

    goto :goto_0

    .line 263
    :pswitch_2
    sget-object v3, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->ENCRYPTED_INSECURE:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    goto :goto_0

    .line 255
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static getStatusForPgpEncryptedResult(Lorg/openintents/openpgp/OpenPgpSignatureResult;)Lcom/fsck/k9/view/MessageCryptoDisplayStatus;
    .locals 2
    .param p0, "signatureResult"    # Lorg/openintents/openpgp/OpenPgpSignatureResult;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 271
    invoke-virtual {p0}, Lorg/openintents/openpgp/OpenPgpSignatureResult;->getResult()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 305
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unhandled encrypted result case!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 273
    :pswitch_0
    sget-object v0, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->ENCRYPTED_UNSIGNED:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    .line 302
    :goto_0
    return-object v0

    .line 277
    :pswitch_1
    sget-object v0, Lcom/fsck/k9/view/MessageCryptoDisplayStatus$1;->$SwitchMap$org$openintents$openpgp$OpenPgpSignatureResult$SenderStatusResult:[I

    invoke-virtual {p0}, Lorg/openintents/openpgp/OpenPgpSignatureResult;->getSenderStatusResult()Lorg/openintents/openpgp/OpenPgpSignatureResult$SenderStatusResult;

    move-result-object v1

    invoke-virtual {v1}, Lorg/openintents/openpgp/OpenPgpSignatureResult$SenderStatusResult;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    .line 287
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unhandled encrypted result case!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 279
    :pswitch_2
    sget-object v0, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->ENCRYPTED_SIGN_VERIFIED:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    goto :goto_0

    .line 281
    :pswitch_3
    sget-object v0, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->ENCRYPTED_SIGN_UNVERIFIED:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    goto :goto_0

    .line 283
    :pswitch_4
    sget-object v0, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->ENCRYPTED_SIGN_MISMATCH:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    goto :goto_0

    .line 285
    :pswitch_5
    sget-object v0, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->ENCRYPTED_SIGN_UNVERIFIED:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    goto :goto_0

    .line 290
    :pswitch_6
    sget-object v0, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->ENCRYPTED_SIGN_UNKNOWN:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    goto :goto_0

    .line 293
    :pswitch_7
    sget-object v0, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->ENCRYPTED_SIGN_ERROR:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    goto :goto_0

    .line 296
    :pswitch_8
    sget-object v0, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->ENCRYPTED_SIGN_EXPIRED:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    goto :goto_0

    .line 299
    :pswitch_9
    sget-object v0, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->ENCRYPTED_SIGN_REVOKED:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    goto :goto_0

    .line 302
    :pswitch_a
    sget-object v0, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->ENCRYPTED_SIGN_INSECURE:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    goto :goto_0

    .line 271
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_7
        :pswitch_1
        :pswitch_6
        :pswitch_1
        :pswitch_9
        :pswitch_8
        :pswitch_a
    .end packed-switch

    .line 277
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private static getStatusForPgpUnencryptedResult(Lorg/openintents/openpgp/OpenPgpSignatureResult;)Lcom/fsck/k9/view/MessageCryptoDisplayStatus;
    .locals 2
    .param p0, "signatureResult"    # Lorg/openintents/openpgp/OpenPgpSignatureResult;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 311
    invoke-virtual {p0}, Lorg/openintents/openpgp/OpenPgpSignatureResult;->getResult()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 345
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unhandled encrypted result case!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 313
    :pswitch_0
    sget-object v0, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->DISABLED:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    .line 342
    :goto_0
    return-object v0

    .line 317
    :pswitch_1
    sget-object v0, Lcom/fsck/k9/view/MessageCryptoDisplayStatus$1;->$SwitchMap$org$openintents$openpgp$OpenPgpSignatureResult$SenderStatusResult:[I

    invoke-virtual {p0}, Lorg/openintents/openpgp/OpenPgpSignatureResult;->getSenderStatusResult()Lorg/openintents/openpgp/OpenPgpSignatureResult$SenderStatusResult;

    move-result-object v1

    invoke-virtual {v1}, Lorg/openintents/openpgp/OpenPgpSignatureResult$SenderStatusResult;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    .line 327
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unhandled encrypted result case!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 319
    :pswitch_2
    sget-object v0, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->UNENCRYPTED_SIGN_VERIFIED:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    goto :goto_0

    .line 321
    :pswitch_3
    sget-object v0, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->UNENCRYPTED_SIGN_UNVERIFIED:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    goto :goto_0

    .line 323
    :pswitch_4
    sget-object v0, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->UNENCRYPTED_SIGN_MISMATCH:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    goto :goto_0

    .line 325
    :pswitch_5
    sget-object v0, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->UNENCRYPTED_SIGN_UNVERIFIED:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    goto :goto_0

    .line 330
    :pswitch_6
    sget-object v0, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->UNENCRYPTED_SIGN_UNKNOWN:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    goto :goto_0

    .line 333
    :pswitch_7
    sget-object v0, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->UNENCRYPTED_SIGN_ERROR:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    goto :goto_0

    .line 336
    :pswitch_8
    sget-object v0, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->UNENCRYPTED_SIGN_EXPIRED:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    goto :goto_0

    .line 339
    :pswitch_9
    sget-object v0, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->UNENCRYPTED_SIGN_REVOKED:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    goto :goto_0

    .line 342
    :pswitch_a
    sget-object v0, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->UNENCRYPTED_SIGN_INSECURE:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    goto :goto_0

    .line 311
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_7
        :pswitch_1
        :pswitch_6
        :pswitch_1
        :pswitch_9
        :pswitch_8
        :pswitch_a
    .end packed-switch

    .line 317
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fsck/k9/view/MessageCryptoDisplayStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 15
    const-class v0, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    return-object v0
.end method

.method public static values()[Lcom/fsck/k9/view/MessageCryptoDisplayStatus;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->$VALUES:[Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    invoke-virtual {v0}, [Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    return-object v0
.end method


# virtual methods
.method public hasAssociatedKey()Z
    .locals 2

    .prologue
    .line 350
    sget-object v0, Lcom/fsck/k9/view/MessageCryptoDisplayStatus$1;->$SwitchMap$com$fsck$k9$view$MessageCryptoDisplayStatus:[I

    invoke-virtual {p0}, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 368
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 366
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 350
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public isUnencryptedSigned()Z
    .locals 2

    .prologue
    .line 372
    sget-object v0, Lcom/fsck/k9/view/MessageCryptoDisplayStatus$1;->$SwitchMap$com$fsck$k9$view$MessageCryptoDisplayStatus:[I

    invoke-virtual {p0}, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 383
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 381
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 372
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

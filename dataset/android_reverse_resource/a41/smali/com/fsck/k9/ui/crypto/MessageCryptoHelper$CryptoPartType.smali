.class final enum Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPartType;
.super Ljava/lang/Enum;
.source "MessageCryptoHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "CryptoPartType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPartType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPartType;

.field public static final enum PGP_ENCRYPTED:Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPartType;

.field public static final enum PGP_INLINE:Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPartType;

.field public static final enum PGP_SIGNED:Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPartType;

.field public static final enum PLAIN_AUTOCRYPT:Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPartType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 768
    new-instance v0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPartType;

    const-string v1, "PGP_INLINE"

    invoke-direct {v0, v1, v2}, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPartType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPartType;->PGP_INLINE:Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPartType;

    .line 769
    new-instance v0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPartType;

    const-string v1, "PGP_ENCRYPTED"

    invoke-direct {v0, v1, v3}, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPartType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPartType;->PGP_ENCRYPTED:Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPartType;

    .line 770
    new-instance v0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPartType;

    const-string v1, "PGP_SIGNED"

    invoke-direct {v0, v1, v4}, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPartType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPartType;->PGP_SIGNED:Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPartType;

    .line 771
    new-instance v0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPartType;

    const-string v1, "PLAIN_AUTOCRYPT"

    invoke-direct {v0, v1, v5}, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPartType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPartType;->PLAIN_AUTOCRYPT:Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPartType;

    .line 767
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPartType;

    sget-object v1, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPartType;->PGP_INLINE:Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPartType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPartType;->PGP_ENCRYPTED:Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPartType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPartType;->PGP_SIGNED:Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPartType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPartType;->PLAIN_AUTOCRYPT:Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPartType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPartType;->$VALUES:[Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPartType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 767
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPartType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 767
    const-class v0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPartType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPartType;

    return-object v0
.end method

.method public static values()[Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPartType;
    .locals 1

    .prologue
    .line 767
    sget-object v0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPartType;->$VALUES:[Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPartType;

    invoke-virtual {v0}, [Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPartType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$CryptoPartType;

    return-object v0
.end method

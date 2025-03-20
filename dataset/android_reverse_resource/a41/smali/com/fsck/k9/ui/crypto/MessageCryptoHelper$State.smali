.class final enum Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$State;
.super Ljava/lang/Enum;
.source "MessageCryptoHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/ui/crypto/MessageCryptoHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$State;

.field public static final enum AUTOCRYPT:Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$State;

.field public static final enum ENCRYPTION:Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$State;

.field public static final enum FINISHED:Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$State;

.field public static final enum SIGNATURES_AND_INLINE:Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$State;

.field public static final enum START:Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$State;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 788
    new-instance v0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$State;

    const-string v1, "START"

    invoke-direct {v0, v1, v2}, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$State;->START:Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$State;

    new-instance v0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$State;

    const-string v1, "ENCRYPTION"

    invoke-direct {v0, v1, v3}, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$State;->ENCRYPTION:Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$State;

    new-instance v0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$State;

    const-string v1, "SIGNATURES_AND_INLINE"

    invoke-direct {v0, v1, v4}, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$State;->SIGNATURES_AND_INLINE:Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$State;

    new-instance v0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$State;

    const-string v1, "AUTOCRYPT"

    invoke-direct {v0, v1, v5}, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$State;->AUTOCRYPT:Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$State;

    new-instance v0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$State;

    const-string v1, "FINISHED"

    invoke-direct {v0, v1, v6}, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$State;->FINISHED:Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$State;

    .line 787
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$State;

    sget-object v1, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$State;->START:Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$State;->ENCRYPTION:Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$State;->SIGNATURES_AND_INLINE:Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$State;->AUTOCRYPT:Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$State;->FINISHED:Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$State;

    aput-object v1, v0, v6

    sput-object v0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$State;->$VALUES:[Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$State;

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
    .line 787
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 787
    const-class v0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$State;

    return-object v0
.end method

.method public static values()[Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$State;
    .locals 1

    .prologue
    .line 787
    sget-object v0, Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$State;->$VALUES:[Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$State;

    invoke-virtual {v0}, [Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$State;

    return-object v0
.end method

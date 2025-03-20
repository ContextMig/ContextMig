.class public final enum Lcom/fsck/k9/mailstore/CryptoResultAnnotation$CryptoError;
.super Ljava/lang/Enum;
.source "CryptoResultAnnotation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/mailstore/CryptoResultAnnotation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CryptoError"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fsck/k9/mailstore/CryptoResultAnnotation$CryptoError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fsck/k9/mailstore/CryptoResultAnnotation$CryptoError;

.field public static final enum ENCRYPTED_BUT_UNSUPPORTED:Lcom/fsck/k9/mailstore/CryptoResultAnnotation$CryptoError;

.field public static final enum OPENPGP_ENCRYPTED_API_ERROR:Lcom/fsck/k9/mailstore/CryptoResultAnnotation$CryptoError;

.field public static final enum OPENPGP_ENCRYPTED_BUT_INCOMPLETE:Lcom/fsck/k9/mailstore/CryptoResultAnnotation$CryptoError;

.field public static final enum OPENPGP_ENCRYPTED_NO_PROVIDER:Lcom/fsck/k9/mailstore/CryptoResultAnnotation$CryptoError;

.field public static final enum OPENPGP_OK:Lcom/fsck/k9/mailstore/CryptoResultAnnotation$CryptoError;

.field public static final enum OPENPGP_SIGNED_API_ERROR:Lcom/fsck/k9/mailstore/CryptoResultAnnotation$CryptoError;

.field public static final enum OPENPGP_SIGNED_BUT_INCOMPLETE:Lcom/fsck/k9/mailstore/CryptoResultAnnotation$CryptoError;

.field public static final enum OPENPGP_UI_CANCELED:Lcom/fsck/k9/mailstore/CryptoResultAnnotation$CryptoError;

.field public static final enum SIGNED_BUT_UNSUPPORTED:Lcom/fsck/k9/mailstore/CryptoResultAnnotation$CryptoError;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 179
    new-instance v0, Lcom/fsck/k9/mailstore/CryptoResultAnnotation$CryptoError;

    const-string v1, "OPENPGP_OK"

    invoke-direct {v0, v1, v3}, Lcom/fsck/k9/mailstore/CryptoResultAnnotation$CryptoError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/mailstore/CryptoResultAnnotation$CryptoError;->OPENPGP_OK:Lcom/fsck/k9/mailstore/CryptoResultAnnotation$CryptoError;

    .line 180
    new-instance v0, Lcom/fsck/k9/mailstore/CryptoResultAnnotation$CryptoError;

    const-string v1, "OPENPGP_UI_CANCELED"

    invoke-direct {v0, v1, v4}, Lcom/fsck/k9/mailstore/CryptoResultAnnotation$CryptoError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/mailstore/CryptoResultAnnotation$CryptoError;->OPENPGP_UI_CANCELED:Lcom/fsck/k9/mailstore/CryptoResultAnnotation$CryptoError;

    .line 181
    new-instance v0, Lcom/fsck/k9/mailstore/CryptoResultAnnotation$CryptoError;

    const-string v1, "OPENPGP_SIGNED_API_ERROR"

    invoke-direct {v0, v1, v5}, Lcom/fsck/k9/mailstore/CryptoResultAnnotation$CryptoError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/mailstore/CryptoResultAnnotation$CryptoError;->OPENPGP_SIGNED_API_ERROR:Lcom/fsck/k9/mailstore/CryptoResultAnnotation$CryptoError;

    .line 182
    new-instance v0, Lcom/fsck/k9/mailstore/CryptoResultAnnotation$CryptoError;

    const-string v1, "OPENPGP_ENCRYPTED_API_ERROR"

    invoke-direct {v0, v1, v6}, Lcom/fsck/k9/mailstore/CryptoResultAnnotation$CryptoError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/mailstore/CryptoResultAnnotation$CryptoError;->OPENPGP_ENCRYPTED_API_ERROR:Lcom/fsck/k9/mailstore/CryptoResultAnnotation$CryptoError;

    .line 183
    new-instance v0, Lcom/fsck/k9/mailstore/CryptoResultAnnotation$CryptoError;

    const-string v1, "OPENPGP_SIGNED_BUT_INCOMPLETE"

    invoke-direct {v0, v1, v7}, Lcom/fsck/k9/mailstore/CryptoResultAnnotation$CryptoError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/mailstore/CryptoResultAnnotation$CryptoError;->OPENPGP_SIGNED_BUT_INCOMPLETE:Lcom/fsck/k9/mailstore/CryptoResultAnnotation$CryptoError;

    .line 184
    new-instance v0, Lcom/fsck/k9/mailstore/CryptoResultAnnotation$CryptoError;

    const-string v1, "OPENPGP_ENCRYPTED_BUT_INCOMPLETE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/fsck/k9/mailstore/CryptoResultAnnotation$CryptoError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/mailstore/CryptoResultAnnotation$CryptoError;->OPENPGP_ENCRYPTED_BUT_INCOMPLETE:Lcom/fsck/k9/mailstore/CryptoResultAnnotation$CryptoError;

    .line 185
    new-instance v0, Lcom/fsck/k9/mailstore/CryptoResultAnnotation$CryptoError;

    const-string v1, "SIGNED_BUT_UNSUPPORTED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/fsck/k9/mailstore/CryptoResultAnnotation$CryptoError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/mailstore/CryptoResultAnnotation$CryptoError;->SIGNED_BUT_UNSUPPORTED:Lcom/fsck/k9/mailstore/CryptoResultAnnotation$CryptoError;

    .line 186
    new-instance v0, Lcom/fsck/k9/mailstore/CryptoResultAnnotation$CryptoError;

    const-string v1, "ENCRYPTED_BUT_UNSUPPORTED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/fsck/k9/mailstore/CryptoResultAnnotation$CryptoError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/mailstore/CryptoResultAnnotation$CryptoError;->ENCRYPTED_BUT_UNSUPPORTED:Lcom/fsck/k9/mailstore/CryptoResultAnnotation$CryptoError;

    .line 187
    new-instance v0, Lcom/fsck/k9/mailstore/CryptoResultAnnotation$CryptoError;

    const-string v1, "OPENPGP_ENCRYPTED_NO_PROVIDER"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/fsck/k9/mailstore/CryptoResultAnnotation$CryptoError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/mailstore/CryptoResultAnnotation$CryptoError;->OPENPGP_ENCRYPTED_NO_PROVIDER:Lcom/fsck/k9/mailstore/CryptoResultAnnotation$CryptoError;

    .line 178
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/fsck/k9/mailstore/CryptoResultAnnotation$CryptoError;

    sget-object v1, Lcom/fsck/k9/mailstore/CryptoResultAnnotation$CryptoError;->OPENPGP_OK:Lcom/fsck/k9/mailstore/CryptoResultAnnotation$CryptoError;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fsck/k9/mailstore/CryptoResultAnnotation$CryptoError;->OPENPGP_UI_CANCELED:Lcom/fsck/k9/mailstore/CryptoResultAnnotation$CryptoError;

    aput-object v1, v0, v4

    sget-object v1, Lcom/fsck/k9/mailstore/CryptoResultAnnotation$CryptoError;->OPENPGP_SIGNED_API_ERROR:Lcom/fsck/k9/mailstore/CryptoResultAnnotation$CryptoError;

    aput-object v1, v0, v5

    sget-object v1, Lcom/fsck/k9/mailstore/CryptoResultAnnotation$CryptoError;->OPENPGP_ENCRYPTED_API_ERROR:Lcom/fsck/k9/mailstore/CryptoResultAnnotation$CryptoError;

    aput-object v1, v0, v6

    sget-object v1, Lcom/fsck/k9/mailstore/CryptoResultAnnotation$CryptoError;->OPENPGP_SIGNED_BUT_INCOMPLETE:Lcom/fsck/k9/mailstore/CryptoResultAnnotation$CryptoError;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/fsck/k9/mailstore/CryptoResultAnnotation$CryptoError;->OPENPGP_ENCRYPTED_BUT_INCOMPLETE:Lcom/fsck/k9/mailstore/CryptoResultAnnotation$CryptoError;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/fsck/k9/mailstore/CryptoResultAnnotation$CryptoError;->SIGNED_BUT_UNSUPPORTED:Lcom/fsck/k9/mailstore/CryptoResultAnnotation$CryptoError;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/fsck/k9/mailstore/CryptoResultAnnotation$CryptoError;->ENCRYPTED_BUT_UNSUPPORTED:Lcom/fsck/k9/mailstore/CryptoResultAnnotation$CryptoError;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/fsck/k9/mailstore/CryptoResultAnnotation$CryptoError;->OPENPGP_ENCRYPTED_NO_PROVIDER:Lcom/fsck/k9/mailstore/CryptoResultAnnotation$CryptoError;

    aput-object v2, v0, v1

    sput-object v0, Lcom/fsck/k9/mailstore/CryptoResultAnnotation$CryptoError;->$VALUES:[Lcom/fsck/k9/mailstore/CryptoResultAnnotation$CryptoError;

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
    .line 178
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fsck/k9/mailstore/CryptoResultAnnotation$CryptoError;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 178
    const-class v0, Lcom/fsck/k9/mailstore/CryptoResultAnnotation$CryptoError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/mailstore/CryptoResultAnnotation$CryptoError;

    return-object v0
.end method

.method public static values()[Lcom/fsck/k9/mailstore/CryptoResultAnnotation$CryptoError;
    .locals 1

    .prologue
    .line 178
    sget-object v0, Lcom/fsck/k9/mailstore/CryptoResultAnnotation$CryptoError;->$VALUES:[Lcom/fsck/k9/mailstore/CryptoResultAnnotation$CryptoError;

    invoke-virtual {v0}, [Lcom/fsck/k9/mailstore/CryptoResultAnnotation$CryptoError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fsck/k9/mailstore/CryptoResultAnnotation$CryptoError;

    return-object v0
.end method

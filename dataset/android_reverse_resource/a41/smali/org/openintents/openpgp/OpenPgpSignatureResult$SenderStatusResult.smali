.class public final enum Lorg/openintents/openpgp/OpenPgpSignatureResult$SenderStatusResult;
.super Ljava/lang/Enum;
.source "OpenPgpSignatureResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openintents/openpgp/OpenPgpSignatureResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SenderStatusResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/openintents/openpgp/OpenPgpSignatureResult$SenderStatusResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/openintents/openpgp/OpenPgpSignatureResult$SenderStatusResult;

.field public static final enum UNKNOWN:Lorg/openintents/openpgp/OpenPgpSignatureResult$SenderStatusResult;

.field public static final enum USER_ID_CONFIRMED:Lorg/openintents/openpgp/OpenPgpSignatureResult$SenderStatusResult;

.field public static final enum USER_ID_MISSING:Lorg/openintents/openpgp/OpenPgpSignatureResult$SenderStatusResult;

.field public static final enum USER_ID_UNCONFIRMED:Lorg/openintents/openpgp/OpenPgpSignatureResult$SenderStatusResult;

.field public static final VALUES:[Lorg/openintents/openpgp/OpenPgpSignatureResult$SenderStatusResult;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 235
    new-instance v0, Lorg/openintents/openpgp/OpenPgpSignatureResult$SenderStatusResult;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2}, Lorg/openintents/openpgp/OpenPgpSignatureResult$SenderStatusResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/openintents/openpgp/OpenPgpSignatureResult$SenderStatusResult;->UNKNOWN:Lorg/openintents/openpgp/OpenPgpSignatureResult$SenderStatusResult;

    new-instance v0, Lorg/openintents/openpgp/OpenPgpSignatureResult$SenderStatusResult;

    const-string v1, "USER_ID_CONFIRMED"

    invoke-direct {v0, v1, v3}, Lorg/openintents/openpgp/OpenPgpSignatureResult$SenderStatusResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/openintents/openpgp/OpenPgpSignatureResult$SenderStatusResult;->USER_ID_CONFIRMED:Lorg/openintents/openpgp/OpenPgpSignatureResult$SenderStatusResult;

    new-instance v0, Lorg/openintents/openpgp/OpenPgpSignatureResult$SenderStatusResult;

    const-string v1, "USER_ID_UNCONFIRMED"

    invoke-direct {v0, v1, v4}, Lorg/openintents/openpgp/OpenPgpSignatureResult$SenderStatusResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/openintents/openpgp/OpenPgpSignatureResult$SenderStatusResult;->USER_ID_UNCONFIRMED:Lorg/openintents/openpgp/OpenPgpSignatureResult$SenderStatusResult;

    new-instance v0, Lorg/openintents/openpgp/OpenPgpSignatureResult$SenderStatusResult;

    const-string v1, "USER_ID_MISSING"

    invoke-direct {v0, v1, v5}, Lorg/openintents/openpgp/OpenPgpSignatureResult$SenderStatusResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/openintents/openpgp/OpenPgpSignatureResult$SenderStatusResult;->USER_ID_MISSING:Lorg/openintents/openpgp/OpenPgpSignatureResult$SenderStatusResult;

    .line 233
    const/4 v0, 0x4

    new-array v0, v0, [Lorg/openintents/openpgp/OpenPgpSignatureResult$SenderStatusResult;

    sget-object v1, Lorg/openintents/openpgp/OpenPgpSignatureResult$SenderStatusResult;->UNKNOWN:Lorg/openintents/openpgp/OpenPgpSignatureResult$SenderStatusResult;

    aput-object v1, v0, v2

    sget-object v1, Lorg/openintents/openpgp/OpenPgpSignatureResult$SenderStatusResult;->USER_ID_CONFIRMED:Lorg/openintents/openpgp/OpenPgpSignatureResult$SenderStatusResult;

    aput-object v1, v0, v3

    sget-object v1, Lorg/openintents/openpgp/OpenPgpSignatureResult$SenderStatusResult;->USER_ID_UNCONFIRMED:Lorg/openintents/openpgp/OpenPgpSignatureResult$SenderStatusResult;

    aput-object v1, v0, v4

    sget-object v1, Lorg/openintents/openpgp/OpenPgpSignatureResult$SenderStatusResult;->USER_ID_MISSING:Lorg/openintents/openpgp/OpenPgpSignatureResult$SenderStatusResult;

    aput-object v1, v0, v5

    sput-object v0, Lorg/openintents/openpgp/OpenPgpSignatureResult$SenderStatusResult;->$VALUES:[Lorg/openintents/openpgp/OpenPgpSignatureResult$SenderStatusResult;

    .line 236
    invoke-static {}, Lorg/openintents/openpgp/OpenPgpSignatureResult$SenderStatusResult;->values()[Lorg/openintents/openpgp/OpenPgpSignatureResult$SenderStatusResult;

    move-result-object v0

    sput-object v0, Lorg/openintents/openpgp/OpenPgpSignatureResult$SenderStatusResult;->VALUES:[Lorg/openintents/openpgp/OpenPgpSignatureResult$SenderStatusResult;

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
    .line 233
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/openintents/openpgp/OpenPgpSignatureResult$SenderStatusResult;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 233
    const-class v0, Lorg/openintents/openpgp/OpenPgpSignatureResult$SenderStatusResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/openintents/openpgp/OpenPgpSignatureResult$SenderStatusResult;

    return-object v0
.end method

.method public static values()[Lorg/openintents/openpgp/OpenPgpSignatureResult$SenderStatusResult;
    .locals 1

    .prologue
    .line 233
    sget-object v0, Lorg/openintents/openpgp/OpenPgpSignatureResult$SenderStatusResult;->$VALUES:[Lorg/openintents/openpgp/OpenPgpSignatureResult$SenderStatusResult;

    invoke-virtual {v0}, [Lorg/openintents/openpgp/OpenPgpSignatureResult$SenderStatusResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/openintents/openpgp/OpenPgpSignatureResult$SenderStatusResult;

    return-object v0
.end method

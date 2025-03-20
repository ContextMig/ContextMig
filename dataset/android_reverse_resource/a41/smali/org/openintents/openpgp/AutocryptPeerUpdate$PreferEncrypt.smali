.class public final enum Lorg/openintents/openpgp/AutocryptPeerUpdate$PreferEncrypt;
.super Ljava/lang/Enum;
.source "AutocryptPeerUpdate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openintents/openpgp/AutocryptPeerUpdate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PreferEncrypt"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/openintents/openpgp/AutocryptPeerUpdate$PreferEncrypt;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/openintents/openpgp/AutocryptPeerUpdate$PreferEncrypt;

.field public static final enum MUTUAL:Lorg/openintents/openpgp/AutocryptPeerUpdate$PreferEncrypt;

.field public static final enum NOPREFERENCE:Lorg/openintents/openpgp/AutocryptPeerUpdate$PreferEncrypt;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 129
    new-instance v0, Lorg/openintents/openpgp/AutocryptPeerUpdate$PreferEncrypt;

    const-string v1, "NOPREFERENCE"

    invoke-direct {v0, v1, v2}, Lorg/openintents/openpgp/AutocryptPeerUpdate$PreferEncrypt;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/openintents/openpgp/AutocryptPeerUpdate$PreferEncrypt;->NOPREFERENCE:Lorg/openintents/openpgp/AutocryptPeerUpdate$PreferEncrypt;

    new-instance v0, Lorg/openintents/openpgp/AutocryptPeerUpdate$PreferEncrypt;

    const-string v1, "MUTUAL"

    invoke-direct {v0, v1, v3}, Lorg/openintents/openpgp/AutocryptPeerUpdate$PreferEncrypt;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/openintents/openpgp/AutocryptPeerUpdate$PreferEncrypt;->MUTUAL:Lorg/openintents/openpgp/AutocryptPeerUpdate$PreferEncrypt;

    .line 128
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/openintents/openpgp/AutocryptPeerUpdate$PreferEncrypt;

    sget-object v1, Lorg/openintents/openpgp/AutocryptPeerUpdate$PreferEncrypt;->NOPREFERENCE:Lorg/openintents/openpgp/AutocryptPeerUpdate$PreferEncrypt;

    aput-object v1, v0, v2

    sget-object v1, Lorg/openintents/openpgp/AutocryptPeerUpdate$PreferEncrypt;->MUTUAL:Lorg/openintents/openpgp/AutocryptPeerUpdate$PreferEncrypt;

    aput-object v1, v0, v3

    sput-object v0, Lorg/openintents/openpgp/AutocryptPeerUpdate$PreferEncrypt;->$VALUES:[Lorg/openintents/openpgp/AutocryptPeerUpdate$PreferEncrypt;

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
    .line 128
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/openintents/openpgp/AutocryptPeerUpdate$PreferEncrypt;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 128
    const-class v0, Lorg/openintents/openpgp/AutocryptPeerUpdate$PreferEncrypt;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/openintents/openpgp/AutocryptPeerUpdate$PreferEncrypt;

    return-object v0
.end method

.method public static values()[Lorg/openintents/openpgp/AutocryptPeerUpdate$PreferEncrypt;
    .locals 1

    .prologue
    .line 128
    sget-object v0, Lorg/openintents/openpgp/AutocryptPeerUpdate$PreferEncrypt;->$VALUES:[Lorg/openintents/openpgp/AutocryptPeerUpdate$PreferEncrypt;

    invoke-virtual {v0}, [Lorg/openintents/openpgp/AutocryptPeerUpdate$PreferEncrypt;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/openintents/openpgp/AutocryptPeerUpdate$PreferEncrypt;

    return-object v0
.end method

.class public final enum Lcom/fsck/k9/view/CryptoModeSelector$CryptoModeSelectorState;
.super Ljava/lang/Enum;
.source "CryptoModeSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/view/CryptoModeSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CryptoModeSelectorState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fsck/k9/view/CryptoModeSelector$CryptoModeSelectorState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fsck/k9/view/CryptoModeSelector$CryptoModeSelectorState;

.field public static final enum DISABLED:Lcom/fsck/k9/view/CryptoModeSelector$CryptoModeSelectorState;

.field public static final enum OPPORTUNISTIC:Lcom/fsck/k9/view/CryptoModeSelector$CryptoModeSelectorState;

.field public static final enum PRIVATE:Lcom/fsck/k9/view/CryptoModeSelector$CryptoModeSelectorState;

.field public static final enum SIGN_ONLY:Lcom/fsck/k9/view/CryptoModeSelector$CryptoModeSelectorState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 13
    new-instance v0, Lcom/fsck/k9/view/CryptoModeSelector$CryptoModeSelectorState;

    const-string v1, "DISABLED"

    invoke-direct {v0, v1, v2}, Lcom/fsck/k9/view/CryptoModeSelector$CryptoModeSelectorState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/view/CryptoModeSelector$CryptoModeSelectorState;->DISABLED:Lcom/fsck/k9/view/CryptoModeSelector$CryptoModeSelectorState;

    new-instance v0, Lcom/fsck/k9/view/CryptoModeSelector$CryptoModeSelectorState;

    const-string v1, "SIGN_ONLY"

    invoke-direct {v0, v1, v3}, Lcom/fsck/k9/view/CryptoModeSelector$CryptoModeSelectorState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/view/CryptoModeSelector$CryptoModeSelectorState;->SIGN_ONLY:Lcom/fsck/k9/view/CryptoModeSelector$CryptoModeSelectorState;

    new-instance v0, Lcom/fsck/k9/view/CryptoModeSelector$CryptoModeSelectorState;

    const-string v1, "OPPORTUNISTIC"

    invoke-direct {v0, v1, v4}, Lcom/fsck/k9/view/CryptoModeSelector$CryptoModeSelectorState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/view/CryptoModeSelector$CryptoModeSelectorState;->OPPORTUNISTIC:Lcom/fsck/k9/view/CryptoModeSelector$CryptoModeSelectorState;

    new-instance v0, Lcom/fsck/k9/view/CryptoModeSelector$CryptoModeSelectorState;

    const-string v1, "PRIVATE"

    invoke-direct {v0, v1, v5}, Lcom/fsck/k9/view/CryptoModeSelector$CryptoModeSelectorState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/view/CryptoModeSelector$CryptoModeSelectorState;->PRIVATE:Lcom/fsck/k9/view/CryptoModeSelector$CryptoModeSelectorState;

    .line 12
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/fsck/k9/view/CryptoModeSelector$CryptoModeSelectorState;

    sget-object v1, Lcom/fsck/k9/view/CryptoModeSelector$CryptoModeSelectorState;->DISABLED:Lcom/fsck/k9/view/CryptoModeSelector$CryptoModeSelectorState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fsck/k9/view/CryptoModeSelector$CryptoModeSelectorState;->SIGN_ONLY:Lcom/fsck/k9/view/CryptoModeSelector$CryptoModeSelectorState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fsck/k9/view/CryptoModeSelector$CryptoModeSelectorState;->OPPORTUNISTIC:Lcom/fsck/k9/view/CryptoModeSelector$CryptoModeSelectorState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/fsck/k9/view/CryptoModeSelector$CryptoModeSelectorState;->PRIVATE:Lcom/fsck/k9/view/CryptoModeSelector$CryptoModeSelectorState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/fsck/k9/view/CryptoModeSelector$CryptoModeSelectorState;->$VALUES:[Lcom/fsck/k9/view/CryptoModeSelector$CryptoModeSelectorState;

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
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fsck/k9/view/CryptoModeSelector$CryptoModeSelectorState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 12
    const-class v0, Lcom/fsck/k9/view/CryptoModeSelector$CryptoModeSelectorState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/view/CryptoModeSelector$CryptoModeSelectorState;

    return-object v0
.end method

.method public static values()[Lcom/fsck/k9/view/CryptoModeSelector$CryptoModeSelectorState;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/fsck/k9/view/CryptoModeSelector$CryptoModeSelectorState;->$VALUES:[Lcom/fsck/k9/view/CryptoModeSelector$CryptoModeSelectorState;

    invoke-virtual {v0}, [Lcom/fsck/k9/view/CryptoModeSelector$CryptoModeSelectorState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fsck/k9/view/CryptoModeSelector$CryptoModeSelectorState;

    return-object v0
.end method

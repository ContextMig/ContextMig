.class public final enum Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoSpecialModeDisplayType;
.super Ljava/lang/Enum;
.source "RecipientMvpView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/activity/compose/RecipientMvpView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CryptoSpecialModeDisplayType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoSpecialModeDisplayType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoSpecialModeDisplayType;

.field public static final enum NONE:Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoSpecialModeDisplayType;

.field public static final enum PGP_INLINE:Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoSpecialModeDisplayType;

.field public static final enum SIGN_ONLY:Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoSpecialModeDisplayType;

.field public static final enum SIGN_ONLY_PGP_INLINE:Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoSpecialModeDisplayType;


# instance fields
.field final childIdToDisplay:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 468
    new-instance v0, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoSpecialModeDisplayType;

    const-string v1, "NONE"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoSpecialModeDisplayType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoSpecialModeDisplayType;->NONE:Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoSpecialModeDisplayType;

    .line 469
    new-instance v0, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoSpecialModeDisplayType;

    const-string v1, "PGP_INLINE"

    const v2, 0x7f0c008c

    invoke-direct {v0, v1, v4, v2}, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoSpecialModeDisplayType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoSpecialModeDisplayType;->PGP_INLINE:Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoSpecialModeDisplayType;

    .line 470
    new-instance v0, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoSpecialModeDisplayType;

    const-string v1, "SIGN_ONLY"

    const v2, 0x7f0c008d

    invoke-direct {v0, v1, v5, v2}, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoSpecialModeDisplayType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoSpecialModeDisplayType;->SIGN_ONLY:Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoSpecialModeDisplayType;

    .line 471
    new-instance v0, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoSpecialModeDisplayType;

    const-string v1, "SIGN_ONLY_PGP_INLINE"

    const v2, 0x7f0c008e

    invoke-direct {v0, v1, v6, v2}, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoSpecialModeDisplayType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoSpecialModeDisplayType;->SIGN_ONLY_PGP_INLINE:Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoSpecialModeDisplayType;

    .line 467
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoSpecialModeDisplayType;

    sget-object v1, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoSpecialModeDisplayType;->NONE:Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoSpecialModeDisplayType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoSpecialModeDisplayType;->PGP_INLINE:Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoSpecialModeDisplayType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoSpecialModeDisplayType;->SIGN_ONLY:Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoSpecialModeDisplayType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoSpecialModeDisplayType;->SIGN_ONLY_PGP_INLINE:Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoSpecialModeDisplayType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoSpecialModeDisplayType;->$VALUES:[Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoSpecialModeDisplayType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "childIdToDisplay"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 476
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 477
    iput p3, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoSpecialModeDisplayType;->childIdToDisplay:I

    .line 478
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoSpecialModeDisplayType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 467
    const-class v0, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoSpecialModeDisplayType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoSpecialModeDisplayType;

    return-object v0
.end method

.method public static values()[Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoSpecialModeDisplayType;
    .locals 1

    .prologue
    .line 467
    sget-object v0, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoSpecialModeDisplayType;->$VALUES:[Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoSpecialModeDisplayType;

    invoke-virtual {v0}, [Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoSpecialModeDisplayType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoSpecialModeDisplayType;

    return-object v0
.end method

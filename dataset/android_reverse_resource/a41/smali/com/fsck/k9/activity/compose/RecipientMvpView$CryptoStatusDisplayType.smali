.class public final enum Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;
.super Ljava/lang/Enum;
.source "RecipientMvpView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/activity/compose/RecipientMvpView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CryptoStatusDisplayType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;

.field public static final enum CHOICE_DISABLED_TRUSTED:Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;

.field public static final enum CHOICE_DISABLED_UNAVAILABLE:Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;

.field public static final enum CHOICE_DISABLED_UNTRUSTED:Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;

.field public static final enum CHOICE_ENABLED_ERROR:Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;

.field public static final enum CHOICE_ENABLED_TRUSTED:Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;

.field public static final enum CHOICE_ENABLED_UNTRUSTED:Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;

.field public static final enum ERROR:Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;

.field public static final enum NO_CHOICE_AVAILABLE:Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;

.field public static final enum NO_CHOICE_AVAILABLE_TRUSTED:Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;

.field public static final enum NO_CHOICE_EMPTY:Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;

.field public static final enum NO_CHOICE_MUTUAL:Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;

.field public static final enum NO_CHOICE_MUTUAL_TRUSTED:Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;

.field public static final enum NO_CHOICE_UNAVAILABLE:Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;

.field public static final enum SIGN_ONLY:Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;

.field public static final enum UNCONFIGURED:Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;

.field public static final enum UNINITIALIZED:Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;


# instance fields
.field final childIdToDisplay:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const v5, 0x7f0c0091

    const/4 v4, -0x1

    .line 442
    new-instance v0, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;

    const-string v1, "UNCONFIGURED"

    invoke-direct {v0, v1, v6, v4}, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;->UNCONFIGURED:Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;

    .line 443
    new-instance v0, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;

    const-string v1, "UNINITIALIZED"

    invoke-direct {v0, v1, v7, v4}, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;->UNINITIALIZED:Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;

    .line 444
    new-instance v0, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;

    const-string v1, "SIGN_ONLY"

    invoke-direct {v0, v1, v8, v5}, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;->SIGN_ONLY:Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;

    .line 445
    new-instance v0, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;

    const-string v1, "NO_CHOICE_EMPTY"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v4}, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;->NO_CHOICE_EMPTY:Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;

    .line 446
    new-instance v0, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;

    const-string v1, "NO_CHOICE_UNAVAILABLE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v4}, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;->NO_CHOICE_UNAVAILABLE:Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;

    .line 447
    new-instance v0, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;

    const-string v1, "NO_CHOICE_AVAILABLE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v5}, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;->NO_CHOICE_AVAILABLE:Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;

    .line 448
    new-instance v0, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;

    const-string v1, "NO_CHOICE_AVAILABLE_TRUSTED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v5}, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;->NO_CHOICE_AVAILABLE_TRUSTED:Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;

    .line 449
    new-instance v0, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;

    const-string v1, "NO_CHOICE_MUTUAL"

    const/4 v2, 0x7

    const v3, 0x7f0c0092

    invoke-direct {v0, v1, v2, v3}, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;->NO_CHOICE_MUTUAL:Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;

    .line 450
    new-instance v0, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;

    const-string v1, "NO_CHOICE_MUTUAL_TRUSTED"

    const/16 v2, 0x8

    const v3, 0x7f0c0093

    invoke-direct {v0, v1, v2, v3}, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;->NO_CHOICE_MUTUAL_TRUSTED:Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;

    .line 451
    new-instance v0, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;

    const-string v1, "CHOICE_ENABLED_UNTRUSTED"

    const/16 v2, 0x9

    const v3, 0x7f0c0092

    invoke-direct {v0, v1, v2, v3}, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;->CHOICE_ENABLED_UNTRUSTED:Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;

    .line 452
    new-instance v0, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;

    const-string v1, "CHOICE_ENABLED_TRUSTED"

    const/16 v2, 0xa

    const v3, 0x7f0c0093

    invoke-direct {v0, v1, v2, v3}, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;->CHOICE_ENABLED_TRUSTED:Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;

    .line 453
    new-instance v0, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;

    const-string v1, "CHOICE_ENABLED_ERROR"

    const/16 v2, 0xb

    const v3, 0x7f0c0094

    invoke-direct {v0, v1, v2, v3}, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;->CHOICE_ENABLED_ERROR:Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;

    .line 454
    new-instance v0, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;

    const-string v1, "CHOICE_DISABLED_UNTRUSTED"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2, v5}, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;->CHOICE_DISABLED_UNTRUSTED:Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;

    .line 455
    new-instance v0, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;

    const-string v1, "CHOICE_DISABLED_TRUSTED"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2, v5}, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;->CHOICE_DISABLED_TRUSTED:Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;

    .line 456
    new-instance v0, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;

    const-string v1, "CHOICE_DISABLED_UNAVAILABLE"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2, v4}, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;->CHOICE_DISABLED_UNAVAILABLE:Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;

    .line 457
    new-instance v0, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;

    const-string v1, "ERROR"

    const/16 v2, 0xf

    const v3, 0x7f0c0094

    invoke-direct {v0, v1, v2, v3}, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;->ERROR:Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;

    .line 441
    const/16 v0, 0x10

    new-array v0, v0, [Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;

    sget-object v1, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;->UNCONFIGURED:Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;->UNINITIALIZED:Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;->SIGN_ONLY:Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;

    aput-object v1, v0, v8

    const/4 v1, 0x3

    sget-object v2, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;->NO_CHOICE_EMPTY:Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;->NO_CHOICE_UNAVAILABLE:Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;->NO_CHOICE_AVAILABLE:Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;->NO_CHOICE_AVAILABLE_TRUSTED:Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;->NO_CHOICE_MUTUAL:Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;->NO_CHOICE_MUTUAL_TRUSTED:Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;->CHOICE_ENABLED_UNTRUSTED:Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;->CHOICE_ENABLED_TRUSTED:Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;->CHOICE_ENABLED_ERROR:Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;->CHOICE_DISABLED_UNTRUSTED:Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;->CHOICE_DISABLED_TRUSTED:Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;->CHOICE_DISABLED_UNAVAILABLE:Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;->ERROR:Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;->$VALUES:[Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;

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
    .line 462
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 463
    iput p3, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;->childIdToDisplay:I

    .line 464
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 441
    const-class v0, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;

    return-object v0
.end method

.method public static values()[Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;
    .locals 1

    .prologue
    .line 441
    sget-object v0, Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;->$VALUES:[Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;

    invoke-virtual {v0}, [Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fsck/k9/activity/compose/RecipientMvpView$CryptoStatusDisplayType;

    return-object v0
.end method

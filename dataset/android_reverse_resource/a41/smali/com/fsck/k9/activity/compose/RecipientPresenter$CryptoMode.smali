.class public final enum Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;
.super Ljava/lang/Enum;
.source "RecipientPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/activity/compose/RecipientPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CryptoMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;

.field public static final enum CHOICE_DISABLED:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;

.field public static final enum CHOICE_ENABLED:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;

.field public static final enum NO_CHOICE:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;

.field public static final enum SIGN_ONLY:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 979
    new-instance v0, Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;

    const-string v1, "SIGN_ONLY"

    invoke-direct {v0, v1, v2}, Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;->SIGN_ONLY:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;

    .line 980
    new-instance v0, Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;

    const-string v1, "NO_CHOICE"

    invoke-direct {v0, v1, v3}, Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;->NO_CHOICE:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;

    .line 981
    new-instance v0, Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;

    const-string v1, "CHOICE_DISABLED"

    invoke-direct {v0, v1, v4}, Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;->CHOICE_DISABLED:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;

    .line 982
    new-instance v0, Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;

    const-string v1, "CHOICE_ENABLED"

    invoke-direct {v0, v1, v5}, Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;->CHOICE_ENABLED:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;

    .line 978
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;

    sget-object v1, Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;->SIGN_ONLY:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;->NO_CHOICE:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;->CHOICE_DISABLED:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;->CHOICE_ENABLED:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;

    aput-object v1, v0, v5

    sput-object v0, Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;->$VALUES:[Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;

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
    .line 978
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 978
    const-class v0, Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;

    return-object v0
.end method

.method public static values()[Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;
    .locals 1

    .prologue
    .line 978
    sget-object v0, Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;->$VALUES:[Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;

    invoke-virtual {v0}, [Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;

    return-object v0
.end method

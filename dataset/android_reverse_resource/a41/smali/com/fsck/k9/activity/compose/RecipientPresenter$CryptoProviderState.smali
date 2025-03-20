.class public final enum Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoProviderState;
.super Ljava/lang/Enum;
.source "RecipientPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/activity/compose/RecipientPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CryptoProviderState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoProviderState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoProviderState;

.field public static final enum ERROR:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoProviderState;

.field public static final enum LOST_CONNECTION:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoProviderState;

.field public static final enum OK:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoProviderState;

.field public static final enum UNCONFIGURED:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoProviderState;

.field public static final enum UNINITIALIZED:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoProviderState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 971
    new-instance v0, Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoProviderState;

    const-string v1, "UNCONFIGURED"

    invoke-direct {v0, v1, v2}, Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoProviderState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoProviderState;->UNCONFIGURED:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoProviderState;

    .line 972
    new-instance v0, Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoProviderState;

    const-string v1, "UNINITIALIZED"

    invoke-direct {v0, v1, v3}, Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoProviderState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoProviderState;->UNINITIALIZED:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoProviderState;

    .line 973
    new-instance v0, Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoProviderState;

    const-string v1, "LOST_CONNECTION"

    invoke-direct {v0, v1, v4}, Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoProviderState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoProviderState;->LOST_CONNECTION:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoProviderState;

    .line 974
    new-instance v0, Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoProviderState;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v5}, Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoProviderState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoProviderState;->ERROR:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoProviderState;

    .line 975
    new-instance v0, Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoProviderState;

    const-string v1, "OK"

    invoke-direct {v0, v1, v6}, Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoProviderState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoProviderState;->OK:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoProviderState;

    .line 970
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoProviderState;

    sget-object v1, Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoProviderState;->UNCONFIGURED:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoProviderState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoProviderState;->UNINITIALIZED:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoProviderState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoProviderState;->LOST_CONNECTION:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoProviderState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoProviderState;->ERROR:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoProviderState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoProviderState;->OK:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoProviderState;

    aput-object v1, v0, v6

    sput-object v0, Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoProviderState;->$VALUES:[Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoProviderState;

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
    .line 970
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoProviderState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 970
    const-class v0, Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoProviderState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoProviderState;

    return-object v0
.end method

.method public static values()[Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoProviderState;
    .locals 1

    .prologue
    .line 970
    sget-object v0, Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoProviderState;->$VALUES:[Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoProviderState;

    invoke-virtual {v0}, [Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoProviderState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoProviderState;

    return-object v0
.end method

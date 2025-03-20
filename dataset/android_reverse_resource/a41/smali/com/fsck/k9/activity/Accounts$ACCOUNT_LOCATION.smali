.class final enum Lcom/fsck/k9/activity/Accounts$ACCOUNT_LOCATION;
.super Ljava/lang/Enum;
.source "Accounts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/activity/Accounts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ACCOUNT_LOCATION"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fsck/k9/activity/Accounts$ACCOUNT_LOCATION;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fsck/k9/activity/Accounts$ACCOUNT_LOCATION;

.field public static final enum BOTTOM:Lcom/fsck/k9/activity/Accounts$ACCOUNT_LOCATION;

.field public static final enum MIDDLE:Lcom/fsck/k9/activity/Accounts$ACCOUNT_LOCATION;

.field public static final enum TOP:Lcom/fsck/k9/activity/Accounts$ACCOUNT_LOCATION;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 545
    new-instance v0, Lcom/fsck/k9/activity/Accounts$ACCOUNT_LOCATION;

    const-string v1, "TOP"

    invoke-direct {v0, v1, v2}, Lcom/fsck/k9/activity/Accounts$ACCOUNT_LOCATION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/activity/Accounts$ACCOUNT_LOCATION;->TOP:Lcom/fsck/k9/activity/Accounts$ACCOUNT_LOCATION;

    new-instance v0, Lcom/fsck/k9/activity/Accounts$ACCOUNT_LOCATION;

    const-string v1, "MIDDLE"

    invoke-direct {v0, v1, v3}, Lcom/fsck/k9/activity/Accounts$ACCOUNT_LOCATION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/activity/Accounts$ACCOUNT_LOCATION;->MIDDLE:Lcom/fsck/k9/activity/Accounts$ACCOUNT_LOCATION;

    new-instance v0, Lcom/fsck/k9/activity/Accounts$ACCOUNT_LOCATION;

    const-string v1, "BOTTOM"

    invoke-direct {v0, v1, v4}, Lcom/fsck/k9/activity/Accounts$ACCOUNT_LOCATION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/activity/Accounts$ACCOUNT_LOCATION;->BOTTOM:Lcom/fsck/k9/activity/Accounts$ACCOUNT_LOCATION;

    .line 544
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/fsck/k9/activity/Accounts$ACCOUNT_LOCATION;

    sget-object v1, Lcom/fsck/k9/activity/Accounts$ACCOUNT_LOCATION;->TOP:Lcom/fsck/k9/activity/Accounts$ACCOUNT_LOCATION;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fsck/k9/activity/Accounts$ACCOUNT_LOCATION;->MIDDLE:Lcom/fsck/k9/activity/Accounts$ACCOUNT_LOCATION;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fsck/k9/activity/Accounts$ACCOUNT_LOCATION;->BOTTOM:Lcom/fsck/k9/activity/Accounts$ACCOUNT_LOCATION;

    aput-object v1, v0, v4

    sput-object v0, Lcom/fsck/k9/activity/Accounts$ACCOUNT_LOCATION;->$VALUES:[Lcom/fsck/k9/activity/Accounts$ACCOUNT_LOCATION;

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
    .line 544
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fsck/k9/activity/Accounts$ACCOUNT_LOCATION;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 544
    const-class v0, Lcom/fsck/k9/activity/Accounts$ACCOUNT_LOCATION;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/activity/Accounts$ACCOUNT_LOCATION;

    return-object v0
.end method

.method public static values()[Lcom/fsck/k9/activity/Accounts$ACCOUNT_LOCATION;
    .locals 1

    .prologue
    .line 544
    sget-object v0, Lcom/fsck/k9/activity/Accounts$ACCOUNT_LOCATION;->$VALUES:[Lcom/fsck/k9/activity/Accounts$ACCOUNT_LOCATION;

    invoke-virtual {v0}, [Lcom/fsck/k9/activity/Accounts$ACCOUNT_LOCATION;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fsck/k9/activity/Accounts$ACCOUNT_LOCATION;

    return-object v0
.end method

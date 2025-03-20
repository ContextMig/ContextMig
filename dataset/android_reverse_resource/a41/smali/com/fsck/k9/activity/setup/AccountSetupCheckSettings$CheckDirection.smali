.class public final enum Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$CheckDirection;
.super Ljava/lang/Enum;
.source "AccountSetupCheckSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CheckDirection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$CheckDirection;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$CheckDirection;

.field public static final enum INCOMING:Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$CheckDirection;

.field public static final enum OUTGOING:Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$CheckDirection;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 59
    new-instance v0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$CheckDirection;

    const-string v1, "INCOMING"

    invoke-direct {v0, v1, v2}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$CheckDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$CheckDirection;->INCOMING:Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$CheckDirection;

    .line 60
    new-instance v0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$CheckDirection;

    const-string v1, "OUTGOING"

    invoke-direct {v0, v1, v3}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$CheckDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$CheckDirection;->OUTGOING:Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$CheckDirection;

    .line 58
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$CheckDirection;

    sget-object v1, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$CheckDirection;->INCOMING:Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$CheckDirection;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$CheckDirection;->OUTGOING:Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$CheckDirection;

    aput-object v1, v0, v3

    sput-object v0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$CheckDirection;->$VALUES:[Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$CheckDirection;

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
    .line 58
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$CheckDirection;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 58
    const-class v0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$CheckDirection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$CheckDirection;

    return-object v0
.end method

.method public static values()[Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$CheckDirection;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$CheckDirection;->$VALUES:[Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$CheckDirection;

    invoke-virtual {v0}, [Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$CheckDirection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$CheckDirection;

    return-object v0
.end method

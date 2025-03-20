.class public final enum Lcom/fsck/k9/K9$LockScreenNotificationVisibility;
.super Ljava/lang/Enum;
.source "K9.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/K9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LockScreenNotificationVisibility"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fsck/k9/K9$LockScreenNotificationVisibility;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fsck/k9/K9$LockScreenNotificationVisibility;

.field public static final enum APP_NAME:Lcom/fsck/k9/K9$LockScreenNotificationVisibility;

.field public static final enum EVERYTHING:Lcom/fsck/k9/K9$LockScreenNotificationVisibility;

.field public static final enum MESSAGE_COUNT:Lcom/fsck/k9/K9$LockScreenNotificationVisibility;

.field public static final enum NOTHING:Lcom/fsck/k9/K9$LockScreenNotificationVisibility;

.field public static final enum SENDERS:Lcom/fsck/k9/K9$LockScreenNotificationVisibility;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 196
    new-instance v0, Lcom/fsck/k9/K9$LockScreenNotificationVisibility;

    const-string v1, "EVERYTHING"

    invoke-direct {v0, v1, v2}, Lcom/fsck/k9/K9$LockScreenNotificationVisibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/K9$LockScreenNotificationVisibility;->EVERYTHING:Lcom/fsck/k9/K9$LockScreenNotificationVisibility;

    .line 197
    new-instance v0, Lcom/fsck/k9/K9$LockScreenNotificationVisibility;

    const-string v1, "SENDERS"

    invoke-direct {v0, v1, v3}, Lcom/fsck/k9/K9$LockScreenNotificationVisibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/K9$LockScreenNotificationVisibility;->SENDERS:Lcom/fsck/k9/K9$LockScreenNotificationVisibility;

    .line 198
    new-instance v0, Lcom/fsck/k9/K9$LockScreenNotificationVisibility;

    const-string v1, "MESSAGE_COUNT"

    invoke-direct {v0, v1, v4}, Lcom/fsck/k9/K9$LockScreenNotificationVisibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/K9$LockScreenNotificationVisibility;->MESSAGE_COUNT:Lcom/fsck/k9/K9$LockScreenNotificationVisibility;

    .line 199
    new-instance v0, Lcom/fsck/k9/K9$LockScreenNotificationVisibility;

    const-string v1, "APP_NAME"

    invoke-direct {v0, v1, v5}, Lcom/fsck/k9/K9$LockScreenNotificationVisibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/K9$LockScreenNotificationVisibility;->APP_NAME:Lcom/fsck/k9/K9$LockScreenNotificationVisibility;

    .line 200
    new-instance v0, Lcom/fsck/k9/K9$LockScreenNotificationVisibility;

    const-string v1, "NOTHING"

    invoke-direct {v0, v1, v6}, Lcom/fsck/k9/K9$LockScreenNotificationVisibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/K9$LockScreenNotificationVisibility;->NOTHING:Lcom/fsck/k9/K9$LockScreenNotificationVisibility;

    .line 195
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/fsck/k9/K9$LockScreenNotificationVisibility;

    sget-object v1, Lcom/fsck/k9/K9$LockScreenNotificationVisibility;->EVERYTHING:Lcom/fsck/k9/K9$LockScreenNotificationVisibility;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fsck/k9/K9$LockScreenNotificationVisibility;->SENDERS:Lcom/fsck/k9/K9$LockScreenNotificationVisibility;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fsck/k9/K9$LockScreenNotificationVisibility;->MESSAGE_COUNT:Lcom/fsck/k9/K9$LockScreenNotificationVisibility;

    aput-object v1, v0, v4

    sget-object v1, Lcom/fsck/k9/K9$LockScreenNotificationVisibility;->APP_NAME:Lcom/fsck/k9/K9$LockScreenNotificationVisibility;

    aput-object v1, v0, v5

    sget-object v1, Lcom/fsck/k9/K9$LockScreenNotificationVisibility;->NOTHING:Lcom/fsck/k9/K9$LockScreenNotificationVisibility;

    aput-object v1, v0, v6

    sput-object v0, Lcom/fsck/k9/K9$LockScreenNotificationVisibility;->$VALUES:[Lcom/fsck/k9/K9$LockScreenNotificationVisibility;

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
    .line 195
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fsck/k9/K9$LockScreenNotificationVisibility;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 195
    const-class v0, Lcom/fsck/k9/K9$LockScreenNotificationVisibility;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/K9$LockScreenNotificationVisibility;

    return-object v0
.end method

.method public static values()[Lcom/fsck/k9/K9$LockScreenNotificationVisibility;
    .locals 1

    .prologue
    .line 195
    sget-object v0, Lcom/fsck/k9/K9$LockScreenNotificationVisibility;->$VALUES:[Lcom/fsck/k9/K9$LockScreenNotificationVisibility;

    invoke-virtual {v0}, [Lcom/fsck/k9/K9$LockScreenNotificationVisibility;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fsck/k9/K9$LockScreenNotificationVisibility;

    return-object v0
.end method

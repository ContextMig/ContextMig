.class public final enum Lcom/fsck/k9/K9$NotificationHideSubject;
.super Ljava/lang/Enum;
.source "K9.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/K9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NotificationHideSubject"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fsck/k9/K9$NotificationHideSubject;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fsck/k9/K9$NotificationHideSubject;

.field public static final enum ALWAYS:Lcom/fsck/k9/K9$NotificationHideSubject;

.field public static final enum NEVER:Lcom/fsck/k9/K9$NotificationHideSubject;

.field public static final enum WHEN_LOCKED:Lcom/fsck/k9/K9$NotificationHideSubject;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 176
    new-instance v0, Lcom/fsck/k9/K9$NotificationHideSubject;

    const-string v1, "ALWAYS"

    invoke-direct {v0, v1, v2}, Lcom/fsck/k9/K9$NotificationHideSubject;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/K9$NotificationHideSubject;->ALWAYS:Lcom/fsck/k9/K9$NotificationHideSubject;

    .line 177
    new-instance v0, Lcom/fsck/k9/K9$NotificationHideSubject;

    const-string v1, "WHEN_LOCKED"

    invoke-direct {v0, v1, v3}, Lcom/fsck/k9/K9$NotificationHideSubject;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/K9$NotificationHideSubject;->WHEN_LOCKED:Lcom/fsck/k9/K9$NotificationHideSubject;

    .line 178
    new-instance v0, Lcom/fsck/k9/K9$NotificationHideSubject;

    const-string v1, "NEVER"

    invoke-direct {v0, v1, v4}, Lcom/fsck/k9/K9$NotificationHideSubject;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/K9$NotificationHideSubject;->NEVER:Lcom/fsck/k9/K9$NotificationHideSubject;

    .line 175
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/fsck/k9/K9$NotificationHideSubject;

    sget-object v1, Lcom/fsck/k9/K9$NotificationHideSubject;->ALWAYS:Lcom/fsck/k9/K9$NotificationHideSubject;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fsck/k9/K9$NotificationHideSubject;->WHEN_LOCKED:Lcom/fsck/k9/K9$NotificationHideSubject;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fsck/k9/K9$NotificationHideSubject;->NEVER:Lcom/fsck/k9/K9$NotificationHideSubject;

    aput-object v1, v0, v4

    sput-object v0, Lcom/fsck/k9/K9$NotificationHideSubject;->$VALUES:[Lcom/fsck/k9/K9$NotificationHideSubject;

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
    .line 175
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fsck/k9/K9$NotificationHideSubject;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 175
    const-class v0, Lcom/fsck/k9/K9$NotificationHideSubject;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/K9$NotificationHideSubject;

    return-object v0
.end method

.method public static values()[Lcom/fsck/k9/K9$NotificationHideSubject;
    .locals 1

    .prologue
    .line 175
    sget-object v0, Lcom/fsck/k9/K9$NotificationHideSubject;->$VALUES:[Lcom/fsck/k9/K9$NotificationHideSubject;

    invoke-virtual {v0}, [Lcom/fsck/k9/K9$NotificationHideSubject;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fsck/k9/K9$NotificationHideSubject;

    return-object v0
.end method

.class public final enum Lcom/fsck/k9/K9$NotificationQuickDelete;
.super Ljava/lang/Enum;
.source "K9.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/K9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NotificationQuickDelete"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fsck/k9/K9$NotificationQuickDelete;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fsck/k9/K9$NotificationQuickDelete;

.field public static final enum ALWAYS:Lcom/fsck/k9/K9$NotificationQuickDelete;

.field public static final enum FOR_SINGLE_MSG:Lcom/fsck/k9/K9$NotificationQuickDelete;

.field public static final enum NEVER:Lcom/fsck/k9/K9$NotificationQuickDelete;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 187
    new-instance v0, Lcom/fsck/k9/K9$NotificationQuickDelete;

    const-string v1, "ALWAYS"

    invoke-direct {v0, v1, v2}, Lcom/fsck/k9/K9$NotificationQuickDelete;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/K9$NotificationQuickDelete;->ALWAYS:Lcom/fsck/k9/K9$NotificationQuickDelete;

    .line 188
    new-instance v0, Lcom/fsck/k9/K9$NotificationQuickDelete;

    const-string v1, "FOR_SINGLE_MSG"

    invoke-direct {v0, v1, v3}, Lcom/fsck/k9/K9$NotificationQuickDelete;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/K9$NotificationQuickDelete;->FOR_SINGLE_MSG:Lcom/fsck/k9/K9$NotificationQuickDelete;

    .line 189
    new-instance v0, Lcom/fsck/k9/K9$NotificationQuickDelete;

    const-string v1, "NEVER"

    invoke-direct {v0, v1, v4}, Lcom/fsck/k9/K9$NotificationQuickDelete;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/K9$NotificationQuickDelete;->NEVER:Lcom/fsck/k9/K9$NotificationQuickDelete;

    .line 186
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/fsck/k9/K9$NotificationQuickDelete;

    sget-object v1, Lcom/fsck/k9/K9$NotificationQuickDelete;->ALWAYS:Lcom/fsck/k9/K9$NotificationQuickDelete;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fsck/k9/K9$NotificationQuickDelete;->FOR_SINGLE_MSG:Lcom/fsck/k9/K9$NotificationQuickDelete;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fsck/k9/K9$NotificationQuickDelete;->NEVER:Lcom/fsck/k9/K9$NotificationQuickDelete;

    aput-object v1, v0, v4

    sput-object v0, Lcom/fsck/k9/K9$NotificationQuickDelete;->$VALUES:[Lcom/fsck/k9/K9$NotificationQuickDelete;

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
    .line 186
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fsck/k9/K9$NotificationQuickDelete;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 186
    const-class v0, Lcom/fsck/k9/K9$NotificationQuickDelete;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/K9$NotificationQuickDelete;

    return-object v0
.end method

.method public static values()[Lcom/fsck/k9/K9$NotificationQuickDelete;
    .locals 1

    .prologue
    .line 186
    sget-object v0, Lcom/fsck/k9/K9$NotificationQuickDelete;->$VALUES:[Lcom/fsck/k9/K9$NotificationQuickDelete;

    invoke-virtual {v0}, [Lcom/fsck/k9/K9$NotificationQuickDelete;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fsck/k9/K9$NotificationQuickDelete;

    return-object v0
.end method

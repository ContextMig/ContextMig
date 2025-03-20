.class public final enum Lcom/db/chart/view/Tooltip$Alignment;
.super Ljava/lang/Enum;
.source "Tooltip.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/db/chart/view/Tooltip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Alignment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/db/chart/view/Tooltip$Alignment;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/db/chart/view/Tooltip$Alignment;

.field public static final enum BOTTOM_BOTTOM:Lcom/db/chart/view/Tooltip$Alignment;

.field public static final enum BOTTOM_TOP:Lcom/db/chart/view/Tooltip$Alignment;

.field public static final enum CENTER:Lcom/db/chart/view/Tooltip$Alignment;

.field public static final enum LEFT_LEFT:Lcom/db/chart/view/Tooltip$Alignment;

.field public static final enum LEFT_RIGHT:Lcom/db/chart/view/Tooltip$Alignment;

.field public static final enum RIGHT_LEFT:Lcom/db/chart/view/Tooltip$Alignment;

.field public static final enum RIGHT_RIGHT:Lcom/db/chart/view/Tooltip$Alignment;

.field public static final enum TOP_BOTTOM:Lcom/db/chart/view/Tooltip$Alignment;

.field public static final enum TOP_TOP:Lcom/db/chart/view/Tooltip$Alignment;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 42
    new-instance v0, Lcom/db/chart/view/Tooltip$Alignment;

    const-string v1, "BOTTOM_TOP"

    invoke-direct {v0, v1, v3}, Lcom/db/chart/view/Tooltip$Alignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/db/chart/view/Tooltip$Alignment;->BOTTOM_TOP:Lcom/db/chart/view/Tooltip$Alignment;

    .line 43
    new-instance v0, Lcom/db/chart/view/Tooltip$Alignment;

    const-string v1, "TOP_BOTTOM"

    invoke-direct {v0, v1, v4}, Lcom/db/chart/view/Tooltip$Alignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/db/chart/view/Tooltip$Alignment;->TOP_BOTTOM:Lcom/db/chart/view/Tooltip$Alignment;

    .line 44
    new-instance v0, Lcom/db/chart/view/Tooltip$Alignment;

    const-string v1, "TOP_TOP"

    invoke-direct {v0, v1, v5}, Lcom/db/chart/view/Tooltip$Alignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/db/chart/view/Tooltip$Alignment;->TOP_TOP:Lcom/db/chart/view/Tooltip$Alignment;

    .line 45
    new-instance v0, Lcom/db/chart/view/Tooltip$Alignment;

    const-string v1, "CENTER"

    invoke-direct {v0, v1, v6}, Lcom/db/chart/view/Tooltip$Alignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/db/chart/view/Tooltip$Alignment;->CENTER:Lcom/db/chart/view/Tooltip$Alignment;

    .line 46
    new-instance v0, Lcom/db/chart/view/Tooltip$Alignment;

    const-string v1, "BOTTOM_BOTTOM"

    invoke-direct {v0, v1, v7}, Lcom/db/chart/view/Tooltip$Alignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/db/chart/view/Tooltip$Alignment;->BOTTOM_BOTTOM:Lcom/db/chart/view/Tooltip$Alignment;

    .line 47
    new-instance v0, Lcom/db/chart/view/Tooltip$Alignment;

    const-string v1, "LEFT_LEFT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/db/chart/view/Tooltip$Alignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/db/chart/view/Tooltip$Alignment;->LEFT_LEFT:Lcom/db/chart/view/Tooltip$Alignment;

    .line 48
    new-instance v0, Lcom/db/chart/view/Tooltip$Alignment;

    const-string v1, "RIGHT_LEFT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/db/chart/view/Tooltip$Alignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/db/chart/view/Tooltip$Alignment;->RIGHT_LEFT:Lcom/db/chart/view/Tooltip$Alignment;

    .line 49
    new-instance v0, Lcom/db/chart/view/Tooltip$Alignment;

    const-string v1, "RIGHT_RIGHT"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/db/chart/view/Tooltip$Alignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/db/chart/view/Tooltip$Alignment;->RIGHT_RIGHT:Lcom/db/chart/view/Tooltip$Alignment;

    .line 50
    new-instance v0, Lcom/db/chart/view/Tooltip$Alignment;

    const-string v1, "LEFT_RIGHT"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/db/chart/view/Tooltip$Alignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/db/chart/view/Tooltip$Alignment;->LEFT_RIGHT:Lcom/db/chart/view/Tooltip$Alignment;

    .line 41
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/db/chart/view/Tooltip$Alignment;

    sget-object v1, Lcom/db/chart/view/Tooltip$Alignment;->BOTTOM_TOP:Lcom/db/chart/view/Tooltip$Alignment;

    aput-object v1, v0, v3

    sget-object v1, Lcom/db/chart/view/Tooltip$Alignment;->TOP_BOTTOM:Lcom/db/chart/view/Tooltip$Alignment;

    aput-object v1, v0, v4

    sget-object v1, Lcom/db/chart/view/Tooltip$Alignment;->TOP_TOP:Lcom/db/chart/view/Tooltip$Alignment;

    aput-object v1, v0, v5

    sget-object v1, Lcom/db/chart/view/Tooltip$Alignment;->CENTER:Lcom/db/chart/view/Tooltip$Alignment;

    aput-object v1, v0, v6

    sget-object v1, Lcom/db/chart/view/Tooltip$Alignment;->BOTTOM_BOTTOM:Lcom/db/chart/view/Tooltip$Alignment;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/db/chart/view/Tooltip$Alignment;->LEFT_LEFT:Lcom/db/chart/view/Tooltip$Alignment;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/db/chart/view/Tooltip$Alignment;->RIGHT_LEFT:Lcom/db/chart/view/Tooltip$Alignment;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/db/chart/view/Tooltip$Alignment;->RIGHT_RIGHT:Lcom/db/chart/view/Tooltip$Alignment;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/db/chart/view/Tooltip$Alignment;->LEFT_RIGHT:Lcom/db/chart/view/Tooltip$Alignment;

    aput-object v2, v0, v1

    sput-object v0, Lcom/db/chart/view/Tooltip$Alignment;->$VALUES:[Lcom/db/chart/view/Tooltip$Alignment;

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
    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/db/chart/view/Tooltip$Alignment;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 41
    const-class v0, Lcom/db/chart/view/Tooltip$Alignment;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/db/chart/view/Tooltip$Alignment;

    return-object v0
.end method

.method public static values()[Lcom/db/chart/view/Tooltip$Alignment;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/db/chart/view/Tooltip$Alignment;->$VALUES:[Lcom/db/chart/view/Tooltip$Alignment;

    invoke-virtual {v0}, [Lcom/db/chart/view/Tooltip$Alignment;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/db/chart/view/Tooltip$Alignment;

    return-object v0
.end method

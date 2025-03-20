.class public final enum Lcom/db/chart/view/AxisController$LabelPosition;
.super Ljava/lang/Enum;
.source "AxisController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/db/chart/view/AxisController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LabelPosition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/db/chart/view/AxisController$LabelPosition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/db/chart/view/AxisController$LabelPosition;

.field public static final enum INSIDE:Lcom/db/chart/view/AxisController$LabelPosition;

.field public static final enum NONE:Lcom/db/chart/view/AxisController$LabelPosition;

.field public static final enum OUTSIDE:Lcom/db/chart/view/AxisController$LabelPosition;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 38
    new-instance v0, Lcom/db/chart/view/AxisController$LabelPosition;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/db/chart/view/AxisController$LabelPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/db/chart/view/AxisController$LabelPosition;->NONE:Lcom/db/chart/view/AxisController$LabelPosition;

    new-instance v0, Lcom/db/chart/view/AxisController$LabelPosition;

    const-string v1, "OUTSIDE"

    invoke-direct {v0, v1, v3}, Lcom/db/chart/view/AxisController$LabelPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/db/chart/view/AxisController$LabelPosition;->OUTSIDE:Lcom/db/chart/view/AxisController$LabelPosition;

    new-instance v0, Lcom/db/chart/view/AxisController$LabelPosition;

    const-string v1, "INSIDE"

    invoke-direct {v0, v1, v4}, Lcom/db/chart/view/AxisController$LabelPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/db/chart/view/AxisController$LabelPosition;->INSIDE:Lcom/db/chart/view/AxisController$LabelPosition;

    .line 37
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/db/chart/view/AxisController$LabelPosition;

    sget-object v1, Lcom/db/chart/view/AxisController$LabelPosition;->NONE:Lcom/db/chart/view/AxisController$LabelPosition;

    aput-object v1, v0, v2

    sget-object v1, Lcom/db/chart/view/AxisController$LabelPosition;->OUTSIDE:Lcom/db/chart/view/AxisController$LabelPosition;

    aput-object v1, v0, v3

    sget-object v1, Lcom/db/chart/view/AxisController$LabelPosition;->INSIDE:Lcom/db/chart/view/AxisController$LabelPosition;

    aput-object v1, v0, v4

    sput-object v0, Lcom/db/chart/view/AxisController$LabelPosition;->$VALUES:[Lcom/db/chart/view/AxisController$LabelPosition;

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
    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/db/chart/view/AxisController$LabelPosition;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 37
    const-class v0, Lcom/db/chart/view/AxisController$LabelPosition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/db/chart/view/AxisController$LabelPosition;

    return-object v0
.end method

.method public static values()[Lcom/db/chart/view/AxisController$LabelPosition;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/db/chart/view/AxisController$LabelPosition;->$VALUES:[Lcom/db/chart/view/AxisController$LabelPosition;

    invoke-virtual {v0}, [Lcom/db/chart/view/AxisController$LabelPosition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/db/chart/view/AxisController$LabelPosition;

    return-object v0
.end method

.class public final enum Lcom/daimajia/swipe/d;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/daimajia/swipe/d;

.field public static final enum b:Lcom/daimajia/swipe/d;

.field public static final enum c:Lcom/daimajia/swipe/d;

.field public static final enum d:Lcom/daimajia/swipe/d;

.field private static final synthetic e:[Lcom/daimajia/swipe/d;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/daimajia/swipe/d;

    const-string v1, "Left"

    invoke-direct {v0, v1, v2}, Lcom/daimajia/swipe/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/daimajia/swipe/d;->a:Lcom/daimajia/swipe/d;

    new-instance v0, Lcom/daimajia/swipe/d;

    const-string v1, "Top"

    invoke-direct {v0, v1, v3}, Lcom/daimajia/swipe/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/daimajia/swipe/d;->b:Lcom/daimajia/swipe/d;

    new-instance v0, Lcom/daimajia/swipe/d;

    const-string v1, "Right"

    invoke-direct {v0, v1, v4}, Lcom/daimajia/swipe/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/daimajia/swipe/d;->c:Lcom/daimajia/swipe/d;

    new-instance v0, Lcom/daimajia/swipe/d;

    const-string v1, "Bottom"

    invoke-direct {v0, v1, v5}, Lcom/daimajia/swipe/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/daimajia/swipe/d;->d:Lcom/daimajia/swipe/d;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/daimajia/swipe/d;

    sget-object v1, Lcom/daimajia/swipe/d;->a:Lcom/daimajia/swipe/d;

    aput-object v1, v0, v2

    sget-object v1, Lcom/daimajia/swipe/d;->b:Lcom/daimajia/swipe/d;

    aput-object v1, v0, v3

    sget-object v1, Lcom/daimajia/swipe/d;->c:Lcom/daimajia/swipe/d;

    aput-object v1, v0, v4

    sget-object v1, Lcom/daimajia/swipe/d;->d:Lcom/daimajia/swipe/d;

    aput-object v1, v0, v5

    sput-object v0, Lcom/daimajia/swipe/d;->e:[Lcom/daimajia/swipe/d;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/daimajia/swipe/d;
    .locals 1

    const-class v0, Lcom/daimajia/swipe/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/daimajia/swipe/d;

    return-object v0
.end method

.method public static values()[Lcom/daimajia/swipe/d;
    .locals 1

    sget-object v0, Lcom/daimajia/swipe/d;->e:[Lcom/daimajia/swipe/d;

    invoke-virtual {v0}, [Lcom/daimajia/swipe/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/daimajia/swipe/d;

    return-object v0
.end method

.class public final enum Lcom/daimajia/swipe/h;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/daimajia/swipe/h;

.field public static final enum b:Lcom/daimajia/swipe/h;

.field public static final enum c:Lcom/daimajia/swipe/h;

.field private static final synthetic d:[Lcom/daimajia/swipe/h;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/daimajia/swipe/h;

    const-string v1, "Middle"

    invoke-direct {v0, v1, v2}, Lcom/daimajia/swipe/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/daimajia/swipe/h;->a:Lcom/daimajia/swipe/h;

    new-instance v0, Lcom/daimajia/swipe/h;

    const-string v1, "Open"

    invoke-direct {v0, v1, v3}, Lcom/daimajia/swipe/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/daimajia/swipe/h;->b:Lcom/daimajia/swipe/h;

    new-instance v0, Lcom/daimajia/swipe/h;

    const-string v1, "Close"

    invoke-direct {v0, v1, v4}, Lcom/daimajia/swipe/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/daimajia/swipe/h;->c:Lcom/daimajia/swipe/h;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/daimajia/swipe/h;

    sget-object v1, Lcom/daimajia/swipe/h;->a:Lcom/daimajia/swipe/h;

    aput-object v1, v0, v2

    sget-object v1, Lcom/daimajia/swipe/h;->b:Lcom/daimajia/swipe/h;

    aput-object v1, v0, v3

    sget-object v1, Lcom/daimajia/swipe/h;->c:Lcom/daimajia/swipe/h;

    aput-object v1, v0, v4

    sput-object v0, Lcom/daimajia/swipe/h;->d:[Lcom/daimajia/swipe/h;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/daimajia/swipe/h;
    .locals 1

    const-class v0, Lcom/daimajia/swipe/h;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/daimajia/swipe/h;

    return-object v0
.end method

.method public static values()[Lcom/daimajia/swipe/h;
    .locals 1

    sget-object v0, Lcom/daimajia/swipe/h;->d:[Lcom/daimajia/swipe/h;

    invoke-virtual {v0}, [Lcom/daimajia/swipe/h;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/daimajia/swipe/h;

    return-object v0
.end method

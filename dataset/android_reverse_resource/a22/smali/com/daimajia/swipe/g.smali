.class public final enum Lcom/daimajia/swipe/g;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/daimajia/swipe/g;

.field public static final enum b:Lcom/daimajia/swipe/g;

.field private static final synthetic c:[Lcom/daimajia/swipe/g;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/daimajia/swipe/g;

    const-string v1, "LayDown"

    invoke-direct {v0, v1, v2}, Lcom/daimajia/swipe/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/daimajia/swipe/g;->a:Lcom/daimajia/swipe/g;

    new-instance v0, Lcom/daimajia/swipe/g;

    const-string v1, "PullOut"

    invoke-direct {v0, v1, v3}, Lcom/daimajia/swipe/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/daimajia/swipe/g;->b:Lcom/daimajia/swipe/g;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/daimajia/swipe/g;

    sget-object v1, Lcom/daimajia/swipe/g;->a:Lcom/daimajia/swipe/g;

    aput-object v1, v0, v2

    sget-object v1, Lcom/daimajia/swipe/g;->b:Lcom/daimajia/swipe/g;

    aput-object v1, v0, v3

    sput-object v0, Lcom/daimajia/swipe/g;->c:[Lcom/daimajia/swipe/g;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/daimajia/swipe/g;
    .locals 1

    const-class v0, Lcom/daimajia/swipe/g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/daimajia/swipe/g;

    return-object v0
.end method

.method public static values()[Lcom/daimajia/swipe/g;
    .locals 1

    sget-object v0, Lcom/daimajia/swipe/g;->c:[Lcom/daimajia/swipe/g;

    invoke-virtual {v0}, [Lcom/daimajia/swipe/g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/daimajia/swipe/g;

    return-object v0
.end method

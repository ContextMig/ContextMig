.class public final enum Lcom/appflood/mraid/u;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/appflood/mraid/u;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/appflood/mraid/u;

.field public static final enum b:Lcom/appflood/mraid/u;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/appflood/mraid/u;

    const-string v1, "ENABLED"

    invoke-direct {v0, v1, v2}, Lcom/appflood/mraid/u;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appflood/mraid/u;->a:Lcom/appflood/mraid/u;

    new-instance v0, Lcom/appflood/mraid/u;

    const-string v1, "DISABLED"

    invoke-direct {v0, v1, v3}, Lcom/appflood/mraid/u;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appflood/mraid/u;->b:Lcom/appflood/mraid/u;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/appflood/mraid/u;

    sget-object v1, Lcom/appflood/mraid/u;->a:Lcom/appflood/mraid/u;

    aput-object v1, v0, v2

    sget-object v1, Lcom/appflood/mraid/u;->b:Lcom/appflood/mraid/u;

    aput-object v1, v0, v3

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

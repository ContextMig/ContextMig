.class public final enum Lcom/appflood/mraid/y;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/appflood/mraid/y;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/appflood/mraid/y;

.field private static enum b:Lcom/appflood/mraid/y;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/appflood/mraid/y;

    const-string v1, "INLINE"

    invoke-direct {v0, v1, v2}, Lcom/appflood/mraid/y;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appflood/mraid/y;->a:Lcom/appflood/mraid/y;

    new-instance v0, Lcom/appflood/mraid/y;

    const-string v1, "INTERSTITIAL"

    invoke-direct {v0, v1, v3}, Lcom/appflood/mraid/y;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appflood/mraid/y;->b:Lcom/appflood/mraid/y;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/appflood/mraid/y;

    sget-object v1, Lcom/appflood/mraid/y;->a:Lcom/appflood/mraid/y;

    aput-object v1, v0, v2

    sget-object v1, Lcom/appflood/mraid/y;->b:Lcom/appflood/mraid/y;

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

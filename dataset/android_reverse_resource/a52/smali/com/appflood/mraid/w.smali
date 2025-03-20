.class public final enum Lcom/appflood/mraid/w;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/appflood/mraid/w;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/appflood/mraid/w;

.field public static final enum b:Lcom/appflood/mraid/w;

.field public static final enum c:Lcom/appflood/mraid/w;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/appflood/mraid/w;

    const-string v1, "ALWAYS_VISIBLE"

    invoke-direct {v0, v1, v2}, Lcom/appflood/mraid/w;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appflood/mraid/w;->a:Lcom/appflood/mraid/w;

    new-instance v0, Lcom/appflood/mraid/w;

    const-string v1, "ALWAYS_HIDDEN"

    invoke-direct {v0, v1, v3}, Lcom/appflood/mraid/w;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appflood/mraid/w;->b:Lcom/appflood/mraid/w;

    new-instance v0, Lcom/appflood/mraid/w;

    const-string v1, "AD_CONTROLLED"

    invoke-direct {v0, v1, v4}, Lcom/appflood/mraid/w;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appflood/mraid/w;->c:Lcom/appflood/mraid/w;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/appflood/mraid/w;

    sget-object v1, Lcom/appflood/mraid/w;->a:Lcom/appflood/mraid/w;

    aput-object v1, v0, v2

    sget-object v1, Lcom/appflood/mraid/w;->b:Lcom/appflood/mraid/w;

    aput-object v1, v0, v3

    sget-object v1, Lcom/appflood/mraid/w;->c:Lcom/appflood/mraid/w;

    aput-object v1, v0, v4

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

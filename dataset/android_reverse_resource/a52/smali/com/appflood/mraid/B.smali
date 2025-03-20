.class public final enum Lcom/appflood/mraid/B;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/appflood/mraid/B;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/appflood/mraid/B;

.field public static final enum b:Lcom/appflood/mraid/B;

.field public static final enum c:Lcom/appflood/mraid/B;

.field public static final enum d:Lcom/appflood/mraid/B;

.field public static final enum e:Lcom/appflood/mraid/B;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/appflood/mraid/B;

    const-string v1, "LOADING"

    invoke-direct {v0, v1, v2}, Lcom/appflood/mraid/B;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appflood/mraid/B;->a:Lcom/appflood/mraid/B;

    new-instance v0, Lcom/appflood/mraid/B;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1, v3}, Lcom/appflood/mraid/B;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appflood/mraid/B;->b:Lcom/appflood/mraid/B;

    new-instance v0, Lcom/appflood/mraid/B;

    const-string v1, "EXPANDED"

    invoke-direct {v0, v1, v4}, Lcom/appflood/mraid/B;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appflood/mraid/B;->c:Lcom/appflood/mraid/B;

    new-instance v0, Lcom/appflood/mraid/B;

    const-string v1, "HIDDEN"

    invoke-direct {v0, v1, v5}, Lcom/appflood/mraid/B;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appflood/mraid/B;->d:Lcom/appflood/mraid/B;

    new-instance v0, Lcom/appflood/mraid/B;

    const-string v1, "RESIZED"

    invoke-direct {v0, v1, v6}, Lcom/appflood/mraid/B;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appflood/mraid/B;->e:Lcom/appflood/mraid/B;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/appflood/mraid/B;

    sget-object v1, Lcom/appflood/mraid/B;->a:Lcom/appflood/mraid/B;

    aput-object v1, v0, v2

    sget-object v1, Lcom/appflood/mraid/B;->b:Lcom/appflood/mraid/B;

    aput-object v1, v0, v3

    sget-object v1, Lcom/appflood/mraid/B;->c:Lcom/appflood/mraid/B;

    aput-object v1, v0, v4

    sget-object v1, Lcom/appflood/mraid/B;->d:Lcom/appflood/mraid/B;

    aput-object v1, v0, v5

    sget-object v1, Lcom/appflood/mraid/B;->e:Lcom/appflood/mraid/B;

    aput-object v1, v0, v6

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

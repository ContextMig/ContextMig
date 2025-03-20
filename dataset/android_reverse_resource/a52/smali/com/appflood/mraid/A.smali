.class public final enum Lcom/appflood/mraid/A;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/appflood/mraid/A;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/appflood/mraid/A;

.field public static final enum b:Lcom/appflood/mraid/A;

.field public static final enum c:Lcom/appflood/mraid/A;

.field public static final enum d:Lcom/appflood/mraid/A;

.field public static final enum e:Lcom/appflood/mraid/A;

.field public static final enum f:Lcom/appflood/mraid/A;

.field public static final enum g:Lcom/appflood/mraid/A;

.field public static final enum h:Lcom/appflood/mraid/A;

.field private static final synthetic i:[Lcom/appflood/mraid/A;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/appflood/mraid/A;

    const-string v1, "IMPRESSION"

    invoke-direct {v0, v1, v3}, Lcom/appflood/mraid/A;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appflood/mraid/A;->a:Lcom/appflood/mraid/A;

    new-instance v0, Lcom/appflood/mraid/A;

    const-string v1, "CLICK"

    invoke-direct {v0, v1, v4}, Lcom/appflood/mraid/A;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appflood/mraid/A;->b:Lcom/appflood/mraid/A;

    new-instance v0, Lcom/appflood/mraid/A;

    const-string v1, "PAUSE"

    invoke-direct {v0, v1, v5}, Lcom/appflood/mraid/A;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appflood/mraid/A;->c:Lcom/appflood/mraid/A;

    new-instance v0, Lcom/appflood/mraid/A;

    const-string v1, "RESUME"

    invoke-direct {v0, v1, v6}, Lcom/appflood/mraid/A;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appflood/mraid/A;->d:Lcom/appflood/mraid/A;

    new-instance v0, Lcom/appflood/mraid/A;

    const-string v1, "REWIND"

    invoke-direct {v0, v1, v7}, Lcom/appflood/mraid/A;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appflood/mraid/A;->e:Lcom/appflood/mraid/A;

    new-instance v0, Lcom/appflood/mraid/A;

    const-string v1, "COMPLETE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/appflood/mraid/A;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appflood/mraid/A;->f:Lcom/appflood/mraid/A;

    new-instance v0, Lcom/appflood/mraid/A;

    const-string v1, "CLOSE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/appflood/mraid/A;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appflood/mraid/A;->g:Lcom/appflood/mraid/A;

    new-instance v0, Lcom/appflood/mraid/A;

    const-string v1, "NEXT"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/appflood/mraid/A;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appflood/mraid/A;->h:Lcom/appflood/mraid/A;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/appflood/mraid/A;

    sget-object v1, Lcom/appflood/mraid/A;->a:Lcom/appflood/mraid/A;

    aput-object v1, v0, v3

    sget-object v1, Lcom/appflood/mraid/A;->b:Lcom/appflood/mraid/A;

    aput-object v1, v0, v4

    sget-object v1, Lcom/appflood/mraid/A;->c:Lcom/appflood/mraid/A;

    aput-object v1, v0, v5

    sget-object v1, Lcom/appflood/mraid/A;->d:Lcom/appflood/mraid/A;

    aput-object v1, v0, v6

    sget-object v1, Lcom/appflood/mraid/A;->e:Lcom/appflood/mraid/A;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/appflood/mraid/A;->f:Lcom/appflood/mraid/A;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/appflood/mraid/A;->g:Lcom/appflood/mraid/A;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/appflood/mraid/A;->h:Lcom/appflood/mraid/A;

    aput-object v2, v0, v1

    sput-object v0, Lcom/appflood/mraid/A;->i:[Lcom/appflood/mraid/A;

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

.method public static a()[Lcom/appflood/mraid/A;
    .locals 1

    sget-object v0, Lcom/appflood/mraid/A;->i:[Lcom/appflood/mraid/A;

    invoke-virtual {v0}, [Lcom/appflood/mraid/A;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appflood/mraid/A;

    return-object v0
.end method

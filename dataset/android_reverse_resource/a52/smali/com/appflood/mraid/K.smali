.class final Lcom/appflood/mraid/K;
.super Lcom/appflood/mraid/G;


# instance fields
.field private final a:Z


# direct methods
.method private constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Lcom/appflood/mraid/G;-><init>()V

    iput-boolean p1, p0, Lcom/appflood/mraid/K;->a:Z

    return-void
.end method

.method public static a(Z)Lcom/appflood/mraid/K;
    .locals 1

    new-instance v0, Lcom/appflood/mraid/K;

    invoke-direct {v0, p0}, Lcom/appflood/mraid/K;-><init>(Z)V

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "viewable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lcom/appflood/mraid/K;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

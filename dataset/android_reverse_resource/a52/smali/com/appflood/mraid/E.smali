.class final Lcom/appflood/mraid/E;
.super Lcom/appflood/mraid/G;


# instance fields
.field private final a:Lcom/appflood/mraid/y;


# direct methods
.method constructor <init>(Lcom/appflood/mraid/y;)V
    .locals 0

    invoke-direct {p0}, Lcom/appflood/mraid/G;-><init>()V

    iput-object p1, p0, Lcom/appflood/mraid/E;->a:Lcom/appflood/mraid/y;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "placementType: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/appflood/mraid/E;->a:Lcom/appflood/mraid/y;

    invoke-virtual {v1}, Lcom/appflood/mraid/y;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class final Lcom/appflood/mraid/J;
.super Lcom/appflood/mraid/G;


# instance fields
.field private final a:Lcom/appflood/mraid/B;


# direct methods
.method private constructor <init>(Lcom/appflood/mraid/B;)V
    .locals 0

    invoke-direct {p0}, Lcom/appflood/mraid/G;-><init>()V

    iput-object p1, p0, Lcom/appflood/mraid/J;->a:Lcom/appflood/mraid/B;

    return-void
.end method

.method public static a(Lcom/appflood/mraid/B;)Lcom/appflood/mraid/J;
    .locals 1

    new-instance v0, Lcom/appflood/mraid/J;

    invoke-direct {v0, p0}, Lcom/appflood/mraid/J;-><init>(Lcom/appflood/mraid/B;)V

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/appflood/mraid/J;->a:Lcom/appflood/mraid/B;

    invoke-virtual {v1}, Lcom/appflood/mraid/B;->toString()Ljava/lang/String;

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

.class final Lcom/appflood/mraid/r;
.super Lcom/appflood/mraid/d;


# direct methods
.method constructor <init>(Ljava/util/Map;Lcom/appflood/mraid/AFBannerWebView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/appflood/mraid/AFBannerWebView;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/appflood/mraid/d;-><init>(Ljava/util/Map;Lcom/appflood/mraid/AFBannerWebView;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " execute "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/appflood/mraid/r;->a:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  this "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const-string v0, "w"

    invoke-virtual {p0, v0}, Lcom/appflood/mraid/r;->a(Ljava/lang/String;)I

    move-result v1

    const-string v0, "h"

    invoke-virtual {p0, v0}, Lcom/appflood/mraid/r;->a(Ljava/lang/String;)I

    move-result v2

    const-string v0, "x"

    invoke-virtual {p0, v0}, Lcom/appflood/mraid/r;->a(Ljava/lang/String;)I

    move-result v3

    const-string v0, "y"

    invoke-virtual {p0, v0}, Lcom/appflood/mraid/r;->a(Ljava/lang/String;)I

    move-result v4

    const-string v0, "allowOffscreen"

    invoke-virtual {p0, v0}, Lcom/appflood/mraid/r;->c(Ljava/lang/String;)Z

    move-result v5

    if-gtz v1, :cond_0

    iget-object v0, p0, Lcom/appflood/mraid/r;->b:Lcom/appflood/mraid/AFBannerWebView;

    iget-object v0, v0, Lcom/appflood/mraid/AFBannerWebView;->b:Lcom/appflood/mraid/x;

    iget v1, v0, Lcom/appflood/mraid/x;->e:I

    :cond_0
    if-gtz v2, :cond_1

    iget-object v0, p0, Lcom/appflood/mraid/r;->b:Lcom/appflood/mraid/AFBannerWebView;

    iget-object v0, v0, Lcom/appflood/mraid/AFBannerWebView;->b:Lcom/appflood/mraid/x;

    iget v2, v0, Lcom/appflood/mraid/x;->f:I

    :cond_1
    iget-object v0, p0, Lcom/appflood/mraid/r;->b:Lcom/appflood/mraid/AFBannerWebView;

    iget-object v0, v0, Lcom/appflood/mraid/AFBannerWebView;->b:Lcom/appflood/mraid/x;

    invoke-virtual/range {v0 .. v5}, Lcom/appflood/mraid/x;->a(IIIIZ)V

    return-void
.end method

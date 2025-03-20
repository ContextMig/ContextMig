.class final Lcom/appflood/mraid/g;
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

    const-string v0, "w"

    invoke-virtual {p0, v0}, Lcom/appflood/mraid/g;->a(Ljava/lang/String;)I

    move-result v2

    const-string v0, "h"

    invoke-virtual {p0, v0}, Lcom/appflood/mraid/g;->a(Ljava/lang/String;)I

    move-result v3

    const-string v0, "url"

    invoke-virtual {p0, v0}, Lcom/appflood/mraid/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "shouldUseCustomClose"

    invoke-virtual {p0, v0}, Lcom/appflood/mraid/g;->c(Ljava/lang/String;)Z

    move-result v4

    const-string v0, "lockOrientation"

    invoke-virtual {p0, v0}, Lcom/appflood/mraid/g;->c(Ljava/lang/String;)Z

    move-result v5

    if-gtz v2, :cond_0

    iget-object v0, p0, Lcom/appflood/mraid/g;->b:Lcom/appflood/mraid/AFBannerWebView;

    iget-object v0, v0, Lcom/appflood/mraid/AFBannerWebView;->b:Lcom/appflood/mraid/x;

    iget v2, v0, Lcom/appflood/mraid/x;->e:I

    :cond_0
    if-gtz v3, :cond_1

    iget-object v0, p0, Lcom/appflood/mraid/g;->b:Lcom/appflood/mraid/AFBannerWebView;

    iget-object v0, v0, Lcom/appflood/mraid/AFBannerWebView;->b:Lcom/appflood/mraid/x;

    iget v3, v0, Lcom/appflood/mraid/x;->f:I

    :cond_1
    iget-object v0, p0, Lcom/appflood/mraid/g;->b:Lcom/appflood/mraid/AFBannerWebView;

    iget-object v0, v0, Lcom/appflood/mraid/AFBannerWebView;->b:Lcom/appflood/mraid/x;

    invoke-virtual/range {v0 .. v5}, Lcom/appflood/mraid/x;->a(Ljava/lang/String;IIZZ)V

    return-void
.end method

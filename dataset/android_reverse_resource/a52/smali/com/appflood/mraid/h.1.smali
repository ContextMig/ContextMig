.class final Lcom/appflood/mraid/h;
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
    .locals 2

    const-string v0, "url"

    invoke-virtual {p0, v0}, Lcom/appflood/mraid/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/appflood/mraid/h;->b:Lcom/appflood/mraid/AFBannerWebView;

    iget-object v1, v1, Lcom/appflood/mraid/AFBannerWebView;->a:Lcom/appflood/mraid/c;

    invoke-virtual {v1, v0}, Lcom/appflood/mraid/c;->a(Ljava/lang/String;)V

    return-void
.end method

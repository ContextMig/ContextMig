.class final Lcom/appflood/mraid/f;
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
    .locals 1

    iget-object v0, p0, Lcom/appflood/mraid/f;->b:Lcom/appflood/mraid/AFBannerWebView;

    iget-object v0, v0, Lcom/appflood/mraid/AFBannerWebView;->b:Lcom/appflood/mraid/x;

    invoke-virtual {v0}, Lcom/appflood/mraid/x;->d()V

    return-void
.end method

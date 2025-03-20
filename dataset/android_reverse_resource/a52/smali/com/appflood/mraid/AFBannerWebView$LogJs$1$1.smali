.class final Lcom/appflood/mraid/AFBannerWebView$LogJs$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/appflood/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appflood/mraid/AFBannerWebView$LogJs$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/appflood/mraid/AFBannerWebView$LogJs$1;


# direct methods
.method constructor <init>(Lcom/appflood/mraid/AFBannerWebView$LogJs$1;)V
    .locals 0

    iput-object p1, p0, Lcom/appflood/mraid/AFBannerWebView$LogJs$1$1;->a:Lcom/appflood/mraid/AFBannerWebView$LogJs$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClose()V
    .locals 1

    iget-object v0, p0, Lcom/appflood/mraid/AFBannerWebView$LogJs$1$1;->a:Lcom/appflood/mraid/AFBannerWebView$LogJs$1;

    iget-object v0, v0, Lcom/appflood/mraid/AFBannerWebView$LogJs$1;->a:Lcom/appflood/mraid/AFBannerWebView$LogJs;

    iget-object v0, v0, Lcom/appflood/mraid/AFBannerWebView$LogJs;->a:Lcom/appflood/mraid/AFBannerWebView;

    iget-object v0, v0, Lcom/appflood/mraid/AFBannerWebView;->g:Lcom/appflood/c/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appflood/mraid/AFBannerWebView$LogJs$1$1;->a:Lcom/appflood/mraid/AFBannerWebView$LogJs$1;

    iget-object v0, v0, Lcom/appflood/mraid/AFBannerWebView$LogJs$1;->a:Lcom/appflood/mraid/AFBannerWebView$LogJs;

    iget-object v0, v0, Lcom/appflood/mraid/AFBannerWebView$LogJs;->a:Lcom/appflood/mraid/AFBannerWebView;

    iget-object v0, v0, Lcom/appflood/mraid/AFBannerWebView;->g:Lcom/appflood/c/b;

    invoke-interface {v0}, Lcom/appflood/c/b;->onClose()V

    :cond_0
    return-void
.end method

.method public final onComplete()V
    .locals 1

    iget-object v0, p0, Lcom/appflood/mraid/AFBannerWebView$LogJs$1$1;->a:Lcom/appflood/mraid/AFBannerWebView$LogJs$1;

    iget-object v0, v0, Lcom/appflood/mraid/AFBannerWebView$LogJs$1;->a:Lcom/appflood/mraid/AFBannerWebView$LogJs;

    iget-object v0, v0, Lcom/appflood/mraid/AFBannerWebView$LogJs;->a:Lcom/appflood/mraid/AFBannerWebView;

    iget-object v0, v0, Lcom/appflood/mraid/AFBannerWebView;->g:Lcom/appflood/c/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appflood/mraid/AFBannerWebView$LogJs$1$1;->a:Lcom/appflood/mraid/AFBannerWebView$LogJs$1;

    iget-object v0, v0, Lcom/appflood/mraid/AFBannerWebView$LogJs$1;->a:Lcom/appflood/mraid/AFBannerWebView$LogJs;

    iget-object v0, v0, Lcom/appflood/mraid/AFBannerWebView$LogJs;->a:Lcom/appflood/mraid/AFBannerWebView;

    iget-object v0, v0, Lcom/appflood/mraid/AFBannerWebView;->g:Lcom/appflood/c/b;

    invoke-interface {v0}, Lcom/appflood/c/b;->onComplete()V

    :cond_0
    return-void
.end method

.method public final onFinish(Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/appflood/mraid/AFBannerWebView$LogJs$1$1;->a:Lcom/appflood/mraid/AFBannerWebView$LogJs$1;

    iget-object v0, v0, Lcom/appflood/mraid/AFBannerWebView$LogJs$1;->a:Lcom/appflood/mraid/AFBannerWebView$LogJs;

    iget-object v0, v0, Lcom/appflood/mraid/AFBannerWebView$LogJs;->a:Lcom/appflood/mraid/AFBannerWebView;

    iget-object v0, v0, Lcom/appflood/mraid/AFBannerWebView;->g:Lcom/appflood/c/b;

    if-eqz v0, :cond_0

    const-string v0, "type"

    iget-object v1, p0, Lcom/appflood/mraid/AFBannerWebView$LogJs$1$1;->a:Lcom/appflood/mraid/AFBannerWebView$LogJs$1;

    iget-object v1, v1, Lcom/appflood/mraid/AFBannerWebView$LogJs$1;->a:Lcom/appflood/mraid/AFBannerWebView$LogJs;

    iget-object v1, v1, Lcom/appflood/mraid/AFBannerWebView$LogJs;->a:Lcom/appflood/mraid/AFBannerWebView;

    iget-object v1, v1, Lcom/appflood/mraid/AFBannerWebView;->j:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "resize"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/appflood/mraid/AFBannerWebView$LogJs$1$1;->a:Lcom/appflood/mraid/AFBannerWebView$LogJs$1;

    iget-object v0, v0, Lcom/appflood/mraid/AFBannerWebView$LogJs$1;->a:Lcom/appflood/mraid/AFBannerWebView$LogJs;

    iget-object v0, v0, Lcom/appflood/mraid/AFBannerWebView$LogJs;->a:Lcom/appflood/mraid/AFBannerWebView;

    iget-object v0, v0, Lcom/appflood/mraid/AFBannerWebView;->g:Lcom/appflood/c/b;

    invoke-interface {v0, p1}, Lcom/appflood/c/b;->onFinish(Ljava/util/HashMap;)V

    :cond_0
    return-void
.end method

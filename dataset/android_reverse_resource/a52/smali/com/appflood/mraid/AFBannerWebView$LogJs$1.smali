.class final Lcom/appflood/mraid/AFBannerWebView$LogJs$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appflood/mraid/AFBannerWebView$LogJs;->showVideoPlayer(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/appflood/mraid/AFBannerWebView$LogJs;

.field private synthetic b:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/appflood/mraid/AFBannerWebView$LogJs;Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/appflood/mraid/AFBannerWebView$LogJs$1;->a:Lcom/appflood/mraid/AFBannerWebView$LogJs;

    iput-object p2, p0, Lcom/appflood/mraid/AFBannerWebView$LogJs$1;->b:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    const/4 v6, -0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/appflood/mraid/AFBannerWebView$LogJs$1;->a:Lcom/appflood/mraid/AFBannerWebView$LogJs;

    iget-object v0, v0, Lcom/appflood/mraid/AFBannerWebView$LogJs;->a:Lcom/appflood/mraid/AFBannerWebView;

    iget-object v0, v0, Lcom/appflood/mraid/AFBannerWebView;->b:Lcom/appflood/mraid/x;

    invoke-virtual {v0, v5}, Lcom/appflood/mraid/x;->a(Z)V

    iget-object v0, p0, Lcom/appflood/mraid/AFBannerWebView$LogJs$1;->a:Lcom/appflood/mraid/AFBannerWebView$LogJs;

    iget-object v0, v0, Lcom/appflood/mraid/AFBannerWebView$LogJs;->a:Lcom/appflood/mraid/AFBannerWebView;

    iget-object v0, v0, Lcom/appflood/mraid/AFBannerWebView;->b:Lcom/appflood/mraid/x;

    sget-object v1, Lcom/appflood/mraid/B;->b:Lcom/appflood/mraid/B;

    invoke-virtual {v0, v5, v1}, Lcom/appflood/mraid/x;->a(ZLcom/appflood/mraid/B;)V

    iget-object v0, p0, Lcom/appflood/mraid/AFBannerWebView$LogJs$1;->a:Lcom/appflood/mraid/AFBannerWebView$LogJs;

    iget-object v0, v0, Lcom/appflood/mraid/AFBannerWebView$LogJs;->a:Lcom/appflood/mraid/AFBannerWebView;

    iget-object v0, v0, Lcom/appflood/mraid/AFBannerWebView;->i:Lcom/appflood/d/a;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/appflood/mraid/AFBannerWebView$LogJs$1;->a:Lcom/appflood/mraid/AFBannerWebView$LogJs;

    iget-object v0, v0, Lcom/appflood/mraid/AFBannerWebView$LogJs;->a:Lcom/appflood/mraid/AFBannerWebView;

    new-instance v1, Lcom/appflood/d/a;

    iget-object v2, p0, Lcom/appflood/mraid/AFBannerWebView$LogJs$1;->a:Lcom/appflood/mraid/AFBannerWebView$LogJs;

    iget-object v2, v2, Lcom/appflood/mraid/AFBannerWebView$LogJs;->a:Lcom/appflood/mraid/AFBannerWebView;

    invoke-virtual {v2}, Lcom/appflood/mraid/AFBannerWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/appflood/mraid/AFBannerWebView$LogJs$1;->a:Lcom/appflood/mraid/AFBannerWebView$LogJs;

    iget-object v3, v3, Lcom/appflood/mraid/AFBannerWebView$LogJs;->a:Lcom/appflood/mraid/AFBannerWebView;

    iget-object v4, p0, Lcom/appflood/mraid/AFBannerWebView$LogJs$1;->b:Lorg/json/JSONObject;

    invoke-direct {v1, v2, v3, v4}, Lcom/appflood/d/a;-><init>(Landroid/content/Context;Lcom/appflood/mraid/AFBannerWebView;Lorg/json/JSONObject;)V

    iput-object v1, v0, Lcom/appflood/mraid/AFBannerWebView;->i:Lcom/appflood/d/a;

    :cond_0
    iget-object v0, p0, Lcom/appflood/mraid/AFBannerWebView$LogJs$1;->a:Lcom/appflood/mraid/AFBannerWebView$LogJs;

    iget-object v0, v0, Lcom/appflood/mraid/AFBannerWebView$LogJs;->a:Lcom/appflood/mraid/AFBannerWebView;

    iget-object v0, v0, Lcom/appflood/mraid/AFBannerWebView;->i:Lcom/appflood/d/a;

    new-instance v1, Lcom/appflood/mraid/AFBannerWebView$LogJs$1$1;

    invoke-direct {v1, p0}, Lcom/appflood/mraid/AFBannerWebView$LogJs$1$1;-><init>(Lcom/appflood/mraid/AFBannerWebView$LogJs$1;)V

    invoke-virtual {v0, v1}, Lcom/appflood/d/a;->a(Lcom/appflood/c/b;)V

    iget-object v0, p0, Lcom/appflood/mraid/AFBannerWebView$LogJs$1;->a:Lcom/appflood/mraid/AFBannerWebView$LogJs;

    iget-object v0, v0, Lcom/appflood/mraid/AFBannerWebView$LogJs;->a:Lcom/appflood/mraid/AFBannerWebView;

    iget-object v1, p0, Lcom/appflood/mraid/AFBannerWebView$LogJs$1;->a:Lcom/appflood/mraid/AFBannerWebView$LogJs;

    iget-object v1, v1, Lcom/appflood/mraid/AFBannerWebView$LogJs;->a:Lcom/appflood/mraid/AFBannerWebView;

    iget-object v1, v1, Lcom/appflood/mraid/AFBannerWebView;->i:Lcom/appflood/d/a;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Lcom/appflood/mraid/AFBannerWebView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/appflood/mraid/AFBannerWebView$LogJs$1;->a:Lcom/appflood/mraid/AFBannerWebView$LogJs;

    iget-object v0, v0, Lcom/appflood/mraid/AFBannerWebView$LogJs;->a:Lcom/appflood/mraid/AFBannerWebView;

    invoke-virtual {v0, v5}, Lcom/appflood/mraid/AFBannerWebView;->setClickable(Z)V

    return-void
.end method

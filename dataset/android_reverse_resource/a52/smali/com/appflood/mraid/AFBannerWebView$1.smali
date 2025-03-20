.class final Lcom/appflood/mraid/AFBannerWebView$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appflood/mraid/AFBannerWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/appflood/mraid/AFBannerWebView;


# direct methods
.method constructor <init>(Lcom/appflood/mraid/AFBannerWebView;)V
    .locals 0

    iput-object p1, p0, Lcom/appflood/mraid/AFBannerWebView$1;->a:Lcom/appflood/mraid/AFBannerWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/appflood/mraid/AFBannerWebView$1;->a:Lcom/appflood/mraid/AFBannerWebView;

    iget-object v0, v0, Lcom/appflood/mraid/AFBannerWebView;->f:Ljava/util/HashMap;

    const-string v1, "click_cb_url"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/appflood/e/k;->c(Ljava/lang/String;)V

    return-void
.end method

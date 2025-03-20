.class final Lcom/appflood/AFBannerView$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appflood/AFBannerView;->startFadeOut(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Landroid/view/View;

.field private synthetic b:Lcom/appflood/AFBannerView;


# direct methods
.method constructor <init>(Lcom/appflood/AFBannerView;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/appflood/AFBannerView$4;->b:Lcom/appflood/AFBannerView;

    iput-object p2, p0, Lcom/appflood/AFBannerView$4;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    iget-object v0, p0, Lcom/appflood/AFBannerView$4;->a:Landroid/view/View;

    instance-of v0, v0, Lcom/appflood/mraid/AFBannerWebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appflood/AFBannerView$4;->a:Landroid/view/View;

    check-cast v0, Lcom/appflood/mraid/AFBannerWebView;

    invoke-virtual {v0}, Lcom/appflood/mraid/AFBannerWebView;->destroy()V

    :cond_0
    iget-object v0, p0, Lcom/appflood/AFBannerView$4;->b:Lcom/appflood/AFBannerView;

    invoke-virtual {v0}, Lcom/appflood/AFBannerView;->removeAllViews()V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/appflood/AFBannerView$4;->b:Lcom/appflood/AFBannerView;

    invoke-virtual {v1}, Lcom/appflood/AFBannerView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/appflood/AFBannerView$4;->b:Lcom/appflood/AFBannerView;

    invoke-virtual {v2}, Lcom/appflood/AFBannerView;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/appflood/AFBannerView$4;->b:Lcom/appflood/AFBannerView;

    iget-object v2, p0, Lcom/appflood/AFBannerView$4;->b:Lcom/appflood/AFBannerView;

    invoke-static {v2}, Lcom/appflood/AFBannerView;->access$100(Lcom/appflood/AFBannerView;)Lcom/appflood/c/a;

    move-result-object v2

    iget-object v2, v2, Lcom/appflood/c/a;->f:Landroid/view/View;

    invoke-static {v1, v2}, Lcom/appflood/AFBannerView;->access$202(Lcom/appflood/AFBannerView;Landroid/view/View;)Landroid/view/View;

    iget-object v1, p0, Lcom/appflood/AFBannerView$4;->b:Lcom/appflood/AFBannerView;

    iget-object v2, p0, Lcom/appflood/AFBannerView$4;->b:Lcom/appflood/AFBannerView;

    invoke-static {v2}, Lcom/appflood/AFBannerView;->access$200(Lcom/appflood/AFBannerView;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/appflood/AFBannerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/appflood/AFBannerView$4;->b:Lcom/appflood/AFBannerView;

    iget-object v1, p0, Lcom/appflood/AFBannerView$4;->b:Lcom/appflood/AFBannerView;

    invoke-static {v1}, Lcom/appflood/AFBannerView;->access$200(Lcom/appflood/AFBannerView;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/appflood/AFBannerView;->access$800(Lcom/appflood/AFBannerView;Landroid/view/View;)V

    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

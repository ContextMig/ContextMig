.class final Lcom/appflood/AFBannerView$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appflood/AFBannerView;->onFinish(Ljava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/appflood/AFBannerView;


# direct methods
.method constructor <init>(Lcom/appflood/AFBannerView;)V
    .locals 0

    iput-object p1, p0, Lcom/appflood/AFBannerView$2;->a:Lcom/appflood/AFBannerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/appflood/AFBannerView$2;->a:Lcom/appflood/AFBannerView;

    invoke-virtual {v0}, Lcom/appflood/AFBannerView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/appflood/AFBannerView$2;->a:Lcom/appflood/AFBannerView;

    invoke-static {v0}, Lcom/appflood/AFBannerView;->access$100(Lcom/appflood/AFBannerView;)Lcom/appflood/c/a;

    move-result-object v0

    iget-object v0, v0, Lcom/appflood/c/a;->f:Landroid/view/View;

    instance-of v1, v0, Lcom/appflood/mraid/AFBannerWebView;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/appflood/mraid/AFBannerWebView;

    invoke-virtual {v0}, Lcom/appflood/mraid/AFBannerWebView;->destroy()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/appflood/AFBannerView$2;->a:Lcom/appflood/AFBannerView;

    invoke-static {v0}, Lcom/appflood/AFBannerView;->access$200(Lcom/appflood/AFBannerView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/appflood/AFBannerView$2;->a:Lcom/appflood/AFBannerView;

    invoke-static {v0}, Lcom/appflood/AFBannerView;->access$300(Lcom/appflood/AFBannerView;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/appflood/AFBannerView$2;->a:Lcom/appflood/AFBannerView;

    iget-object v1, p0, Lcom/appflood/AFBannerView$2;->a:Lcom/appflood/AFBannerView;

    invoke-static {v1}, Lcom/appflood/AFBannerView;->access$200(Lcom/appflood/AFBannerView;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/appflood/AFBannerView;->access$400(Lcom/appflood/AFBannerView;Landroid/view/View;)V

    iget-object v0, p0, Lcom/appflood/AFBannerView$2;->a:Lcom/appflood/AFBannerView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/appflood/AFBannerView;->access$302(Lcom/appflood/AFBannerView;Z)Z

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " ww "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/appflood/AFBannerView$2;->a:Lcom/appflood/AFBannerView;

    invoke-virtual {v1}, Lcom/appflood/AFBannerView;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " hh "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/appflood/AFBannerView$2;->a:Lcom/appflood/AFBannerView;

    invoke-virtual {v1}, Lcom/appflood/AFBannerView;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/appflood/AFBannerView$2;->a:Lcom/appflood/AFBannerView;

    invoke-virtual {v1}, Lcom/appflood/AFBannerView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/appflood/AFBannerView$2;->a:Lcom/appflood/AFBannerView;

    invoke-virtual {v2}, Lcom/appflood/AFBannerView;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/appflood/AFBannerView$2;->a:Lcom/appflood/AFBannerView;

    iget-object v2, p0, Lcom/appflood/AFBannerView$2;->a:Lcom/appflood/AFBannerView;

    invoke-static {v2}, Lcom/appflood/AFBannerView;->access$100(Lcom/appflood/AFBannerView;)Lcom/appflood/c/a;

    move-result-object v2

    iget-object v2, v2, Lcom/appflood/c/a;->f:Landroid/view/View;

    invoke-static {v1, v2}, Lcom/appflood/AFBannerView;->access$202(Lcom/appflood/AFBannerView;Landroid/view/View;)Landroid/view/View;

    iget-object v1, p0, Lcom/appflood/AFBannerView$2;->a:Lcom/appflood/AFBannerView;

    iget-object v2, p0, Lcom/appflood/AFBannerView$2;->a:Lcom/appflood/AFBannerView;

    invoke-static {v2}, Lcom/appflood/AFBannerView;->access$200(Lcom/appflood/AFBannerView;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/appflood/AFBannerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

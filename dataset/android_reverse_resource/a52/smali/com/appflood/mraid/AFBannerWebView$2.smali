.class final Lcom/appflood/mraid/AFBannerWebView$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


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

    iput-object p1, p0, Lcom/appflood/mraid/AFBannerWebView$2;->a:Lcom/appflood/mraid/AFBannerWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rrrrrrrrrrrrrr "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " clickable "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/appflood/mraid/AFBannerWebView$2;->a:Lcom/appflood/mraid/AFBannerWebView;

    invoke-virtual {v3}, Lcom/appflood/mraid/AFBannerWebView;->isClickable()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v2, p0, Lcom/appflood/mraid/AFBannerWebView$2;->a:Lcom/appflood/mraid/AFBannerWebView;

    invoke-virtual {v2}, Lcom/appflood/mraid/AFBannerWebView;->isClickable()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "xxxxxxxxx "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/appflood/mraid/AFBannerWebView$2;->a:Lcom/appflood/mraid/AFBannerWebView;

    iget v2, v2, Lcom/appflood/mraid/AFBannerWebView;->k:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v1, p0, Lcom/appflood/mraid/AFBannerWebView$2;->a:Lcom/appflood/mraid/AFBannerWebView;

    iget v1, v1, Lcom/appflood/mraid/AFBannerWebView;->k:I

    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lcom/appflood/mraid/AFBannerWebView$2;->a:Lcom/appflood/mraid/AFBannerWebView;

    iget v2, v1, Lcom/appflood/mraid/AFBannerWebView;->k:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/appflood/mraid/AFBannerWebView;->k:I

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v0, :cond_4

    iget-object v0, p0, Lcom/appflood/mraid/AFBannerWebView$2;->a:Lcom/appflood/mraid/AFBannerWebView;

    iget v0, v0, Lcom/appflood/mraid/AFBannerWebView;->k:I

    const/4 v2, 0x4

    if-gt v0, v2, :cond_3

    iget-object v0, p0, Lcom/appflood/mraid/AFBannerWebView$2;->a:Lcom/appflood/mraid/AFBannerWebView;

    iget-object v0, v0, Lcom/appflood/mraid/AFBannerWebView;->f:Ljava/util/HashMap;

    const-string v2, "click_cb_url"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/appflood/e/k;->c(Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/appflood/mraid/AFBannerWebView$2;->a:Lcom/appflood/mraid/AFBannerWebView;

    iput v1, v0, Lcom/appflood/mraid/AFBannerWebView;->k:I

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/appflood/mraid/AFBannerWebView$2;->a:Lcom/appflood/mraid/AFBannerWebView;

    iput v1, v0, Lcom/appflood/mraid/AFBannerWebView;->k:I

    move v0, v1

    goto :goto_0
.end method

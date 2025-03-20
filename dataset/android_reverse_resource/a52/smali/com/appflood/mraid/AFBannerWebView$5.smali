.class final Lcom/appflood/mraid/AFBannerWebView$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appflood/mraid/AFBannerWebView;->e()V
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

    iput-object p1, p0, Lcom/appflood/mraid/AFBannerWebView$5;->a:Lcom/appflood/mraid/AFBannerWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    const/4 v11, 0x1

    const/4 v8, 0x0

    const-wide/high16 v9, 0x4064000000000000L    # 160.0

    iget-object v0, p0, Lcom/appflood/mraid/AFBannerWebView$5;->a:Lcom/appflood/mraid/AFBannerWebView;

    invoke-virtual {v0}, Lcom/appflood/mraid/AFBannerWebView;->getWidth()I

    move-result v0

    if-gtz v0, :cond_0

    const-wide/16 v0, 0x1f4

    invoke-static {p0, v0, v1}, Lcom/appflood/c/f;->a(Ljava/lang/Runnable;J)V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v0, p0, Lcom/appflood/mraid/AFBannerWebView$5;->a:Lcom/appflood/mraid/AFBannerWebView;

    invoke-virtual {v0}, Lcom/appflood/mraid/AFBannerWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v2, p0, Lcom/appflood/mraid/AFBannerWebView$5;->a:Lcom/appflood/mraid/AFBannerWebView;

    invoke-virtual {v2, v0}, Lcom/appflood/mraid/AFBannerWebView;->getLocationOnScreen([I)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "location x "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v0, v8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " y = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v0, v11

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " getWidth() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/appflood/mraid/AFBannerWebView$5;->a:Lcom/appflood/mraid/AFBannerWebView;

    invoke-virtual {v3}, Lcom/appflood/mraid/AFBannerWebView;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " getHeight() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/appflood/mraid/AFBannerWebView$5;->a:Lcom/appflood/mraid/AFBannerWebView;

    invoke-virtual {v3}, Lcom/appflood/mraid/AFBannerWebView;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v2, p0, Lcom/appflood/mraid/AFBannerWebView$5;->a:Lcom/appflood/mraid/AFBannerWebView;

    iget-object v3, p0, Lcom/appflood/mraid/AFBannerWebView$5;->a:Lcom/appflood/mraid/AFBannerWebView;

    invoke-virtual {v3}, Lcom/appflood/mraid/AFBannerWebView;->getWidth()I

    move-result v3

    int-to-double v3, v3

    iget v5, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-double v5, v5

    div-double v5, v9, v5

    mul-double/2addr v3, v5

    double-to-int v3, v3

    iget-object v4, p0, Lcom/appflood/mraid/AFBannerWebView$5;->a:Lcom/appflood/mraid/AFBannerWebView;

    invoke-virtual {v4}, Lcom/appflood/mraid/AFBannerWebView;->getHeight()I

    move-result v4

    int-to-double v4, v4

    iget v6, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-double v6, v6

    div-double v6, v9, v6

    mul-double/2addr v4, v6

    double-to-int v4, v4

    aget v5, v0, v8

    int-to-double v5, v5

    iget v7, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-double v7, v7

    div-double v7, v9, v7

    mul-double/2addr v5, v7

    double-to-int v5, v5

    aget v0, v0, v11

    iget-object v6, p0, Lcom/appflood/mraid/AFBannerWebView$5;->a:Lcom/appflood/mraid/AFBannerWebView;

    invoke-virtual {v6}, Lcom/appflood/mraid/AFBannerWebView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/appflood/AFListActivity$c$1;->a(Landroid/content/Context;)I

    move-result v6

    sub-int/2addr v0, v6

    int-to-double v6, v0

    iget v0, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-double v0, v0

    div-double v0, v9, v0

    mul-double/2addr v0, v6

    double-to-int v0, v0

    new-instance v1, Lcom/appflood/mraid/a;

    invoke-direct {v1, v3, v4, v5, v0}, Lcom/appflood/mraid/a;-><init>(IIII)V

    invoke-virtual {v2, v1}, Lcom/appflood/mraid/AFBannerWebView;->a(Lcom/appflood/mraid/G;)V

    goto/16 :goto_0
.end method

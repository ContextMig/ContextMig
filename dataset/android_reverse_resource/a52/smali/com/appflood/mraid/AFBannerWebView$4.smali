.class final Lcom/appflood/mraid/AFBannerWebView$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appflood/mraid/AFBannerWebView;->d()V
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

    iput-object p1, p0, Lcom/appflood/mraid/AFBannerWebView$4;->a:Lcom/appflood/mraid/AFBannerWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    const-wide/high16 v8, 0x4064000000000000L    # 160.0

    iget-object v0, p0, Lcom/appflood/mraid/AFBannerWebView$4;->a:Lcom/appflood/mraid/AFBannerWebView;

    invoke-virtual {v0}, Lcom/appflood/mraid/AFBannerWebView;->getWidth()I

    move-result v0

    if-gtz v0, :cond_0

    const-wide/16 v0, 0x1f4

    invoke-static {p0, v0, v1}, Lcom/appflood/c/f;->a(Ljava/lang/Runnable;J)V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v0, p0, Lcom/appflood/mraid/AFBannerWebView$4;->a:Lcom/appflood/mraid/AFBannerWebView;

    invoke-virtual {v0}, Lcom/appflood/mraid/AFBannerWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "window"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    const-string v0, "width"

    iget-object v3, p0, Lcom/appflood/mraid/AFBannerWebView$4;->a:Lcom/appflood/mraid/AFBannerWebView;

    invoke-virtual {v3}, Lcom/appflood/mraid/AFBannerWebView;->getWidth()I

    move-result v3

    int-to-double v3, v3

    iget v5, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-double v5, v5

    div-double v5, v8, v5

    mul-double/2addr v3, v5

    double-to-int v3, v3

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "height"

    iget-object v3, p0, Lcom/appflood/mraid/AFBannerWebView$4;->a:Lcom/appflood/mraid/AFBannerWebView;

    invoke-virtual {v3}, Lcom/appflood/mraid/AFBannerWebView;->getHeight()I

    move-result v3

    int-to-double v3, v3

    iget v5, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-double v5, v5

    div-double v5, v8, v5

    mul-double/2addr v3, v5

    double-to-int v3, v3

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v3, p0, Lcom/appflood/mraid/AFBannerWebView$4;->a:Lcom/appflood/mraid/AFBannerWebView;

    invoke-virtual {v3, v0}, Lcom/appflood/mraid/AFBannerWebView;->getLocationOnScreen([I)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "location x "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget v4, v0, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " y = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    aget v4, v0, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const-string v3, "x"

    const/4 v4, 0x0

    aget v4, v0, v4

    int-to-double v4, v4

    iget v6, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-double v6, v6

    div-double v6, v8, v6

    mul-double/2addr v4, v6

    double-to-int v4, v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "y"

    const/4 v4, 0x1

    aget v0, v0, v4

    iget-object v4, p0, Lcom/appflood/mraid/AFBannerWebView$4;->a:Lcom/appflood/mraid/AFBannerWebView;

    invoke-virtual {v4}, Lcom/appflood/mraid/AFBannerWebView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/appflood/AFListActivity$c$1;->a(Landroid/content/Context;)I

    move-result v4

    sub-int/2addr v0, v4

    int-to-double v4, v0

    iget v0, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-double v6, v0

    div-double v6, v8, v6

    mul-double/2addr v4, v6

    double-to-int v0, v4

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v0, p0, Lcom/appflood/mraid/AFBannerWebView$4;->a:Lcom/appflood/mraid/AFBannerWebView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "window.mraidbridge.defaultProperties="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appflood/mraid/AFBannerWebView;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

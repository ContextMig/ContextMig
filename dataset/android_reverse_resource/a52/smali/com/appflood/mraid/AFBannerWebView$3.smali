.class final Lcom/appflood/mraid/AFBannerWebView$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appflood/mraid/AFBannerWebView;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Lcom/appflood/mraid/AFBannerWebView;


# direct methods
.method constructor <init>(Lcom/appflood/mraid/AFBannerWebView;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/appflood/mraid/AFBannerWebView$3;->b:Lcom/appflood/mraid/AFBannerWebView;

    iput-object p2, p0, Lcom/appflood/mraid/AFBannerWebView$3;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/appflood/mraid/AFBannerWebView$3;->b:Lcom/appflood/mraid/AFBannerWebView;

    iget-boolean v0, v0, Lcom/appflood/mraid/AFBannerWebView;->h:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/appflood/mraid/AFBannerWebView$3;->b:Lcom/appflood/mraid/AFBannerWebView;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/appflood/mraid/AFBannerWebView$3;->a:Ljava/lang/String;

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/appflood/mraid/AFBannerWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "load url error"

    invoke-static {v0, v1}, Lcom/appflood/e/j;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0
.end method

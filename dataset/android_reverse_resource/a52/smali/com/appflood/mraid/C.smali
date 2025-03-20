.class final Lcom/appflood/mraid/C;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appflood/mraid/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/appflood/mraid/x;


# direct methods
.method constructor <init>(Lcom/appflood/mraid/x;)V
    .locals 0

    iput-object p1, p0, Lcom/appflood/mraid/C;->a:Lcom/appflood/mraid/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/appflood/mraid/C;->a:Lcom/appflood/mraid/x;

    invoke-virtual {v0}, Lcom/appflood/mraid/x;->e()Z

    move-result v0

    iget-object v1, p0, Lcom/appflood/mraid/C;->a:Lcom/appflood/mraid/x;

    iget-boolean v1, v1, Lcom/appflood/mraid/x;->a:Z

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/appflood/mraid/C;->a:Lcom/appflood/mraid/x;

    iput-boolean v0, v1, Lcom/appflood/mraid/x;->a:Z

    iget-object v0, p0, Lcom/appflood/mraid/C;->a:Lcom/appflood/mraid/x;

    invoke-virtual {v0}, Lcom/appflood/mraid/x;->a()Lcom/appflood/mraid/AFBannerWebView;

    move-result-object v0

    iget-object v1, p0, Lcom/appflood/mraid/C;->a:Lcom/appflood/mraid/x;

    iget-boolean v1, v1, Lcom/appflood/mraid/x;->a:Z

    invoke-static {v1}, Lcom/appflood/mraid/K;->a(Z)Lcom/appflood/mraid/K;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appflood/mraid/AFBannerWebView;->a(Lcom/appflood/mraid/G;)V

    :cond_0
    iget-object v0, p0, Lcom/appflood/mraid/C;->a:Lcom/appflood/mraid/x;

    iget-object v1, p0, Lcom/appflood/mraid/C;->a:Lcom/appflood/mraid/x;

    invoke-virtual {v1}, Lcom/appflood/mraid/x;->a()Lcom/appflood/mraid/AFBannerWebView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appflood/mraid/AFBannerWebView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/appflood/mraid/C;->a:Lcom/appflood/mraid/x;

    iget v2, v2, Lcom/appflood/mraid/x;->d:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lcom/appflood/mraid/C;->a:Lcom/appflood/mraid/x;

    invoke-virtual {v2}, Lcom/appflood/mraid/x;->a()Lcom/appflood/mraid/AFBannerWebView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/appflood/mraid/AFBannerWebView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/appflood/mraid/C;->a:Lcom/appflood/mraid/x;

    iget v3, v3, Lcom/appflood/mraid/x;->d:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v0, v1, v2}, Lcom/appflood/mraid/x;->a(Lcom/appflood/mraid/x;II)V

    iget-object v0, p0, Lcom/appflood/mraid/C;->a:Lcom/appflood/mraid/x;

    iget-boolean v0, v0, Lcom/appflood/mraid/x;->b:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/appflood/mraid/C;->a:Lcom/appflood/mraid/x;

    iget-object v0, v0, Lcom/appflood/mraid/x;->c:Landroid/os/Handler;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

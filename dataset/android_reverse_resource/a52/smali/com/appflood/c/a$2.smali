.class final Lcom/appflood/c/a$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appflood/c/a;->requestFinished(Lcom/appflood/b/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Ljava/util/HashMap;

.field private synthetic b:Lcom/appflood/c/a;


# direct methods
.method constructor <init>(Lcom/appflood/c/a;Ljava/util/HashMap;)V
    .locals 0

    iput-object p1, p0, Lcom/appflood/c/a$2;->b:Lcom/appflood/c/a;

    iput-object p2, p0, Lcom/appflood/c/a$2;->a:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/appflood/c/a$2;->b:Lcom/appflood/c/a;

    iget-object v1, p0, Lcom/appflood/c/a$2;->a:Ljava/util/HashMap;

    iput-boolean v4, v0, Lcom/appflood/c/a;->e:Z

    iget-boolean v2, v0, Lcom/appflood/c/a;->e:Z

    if-eqz v2, :cond_0

    new-instance v2, Lcom/appflood/d/a;

    iget-object v3, v0, Lcom/appflood/c/a;->d:Landroid/content/Context;

    invoke-direct {v2, v3, v1}, Lcom/appflood/d/a;-><init>(Landroid/content/Context;Ljava/util/HashMap;)V

    iput-object v2, v0, Lcom/appflood/c/a;->f:Landroid/view/View;

    invoke-virtual {v2, v0}, Lcom/appflood/d/a;->a(Lcom/appflood/c/b;)V

    :goto_0
    return-void

    :cond_0
    new-instance v2, Lcom/appflood/mraid/AFBannerWebView;

    iget-object v3, v0, Lcom/appflood/c/a;->d:Landroid/content/Context;

    invoke-direct {v2, v3, v1}, Lcom/appflood/mraid/AFBannerWebView;-><init>(Landroid/content/Context;Ljava/util/HashMap;)V

    iput-object v2, v0, Lcom/appflood/c/a;->f:Landroid/view/View;

    iput-object v0, v2, Lcom/appflood/mraid/AFBannerWebView;->g:Lcom/appflood/c/b;

    iget-object v0, v2, Lcom/appflood/mraid/AFBannerWebView;->f:Ljava/util/HashMap;

    const-string v1, "html_content"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/appflood/e/j;->g(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v2, v4}, Lcom/appflood/mraid/AFBannerWebView;->a(Z)V

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/appflood/e/k;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v2, v0}, Lcom/appflood/mraid/AFBannerWebView;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/appflood/b/b;

    invoke-direct {v1, v0, v4}, Lcom/appflood/b/b;-><init>(Ljava/lang/String;B)V

    new-instance v0, Lcom/appflood/mraid/AFBannerWebView$7;

    invoke-direct {v0, v2}, Lcom/appflood/mraid/AFBannerWebView$7;-><init>(Lcom/appflood/mraid/AFBannerWebView;)V

    iput-object v0, v1, Lcom/appflood/b/b;->b:Lcom/appflood/b/b$a;

    invoke-virtual {v1}, Lcom/appflood/b/b;->e()V

    goto :goto_0
.end method

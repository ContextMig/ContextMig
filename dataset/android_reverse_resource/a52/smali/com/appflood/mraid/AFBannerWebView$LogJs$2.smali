.class final Lcom/appflood/mraid/AFBannerWebView$LogJs$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appflood/mraid/AFBannerWebView$LogJs;->command(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Lcom/appflood/mraid/AFBannerWebView$LogJs;


# direct methods
.method constructor <init>(Lcom/appflood/mraid/AFBannerWebView$LogJs;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/appflood/mraid/AFBannerWebView$LogJs$2;->b:Lcom/appflood/mraid/AFBannerWebView$LogJs;

    iput-object p2, p0, Lcom/appflood/mraid/AFBannerWebView$LogJs$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/appflood/mraid/AFBannerWebView$LogJs$2;->b:Lcom/appflood/mraid/AFBannerWebView$LogJs;

    iget-object v0, v0, Lcom/appflood/mraid/AFBannerWebView$LogJs;->a:Lcom/appflood/mraid/AFBannerWebView;

    iget-object v1, p0, Lcom/appflood/mraid/AFBannerWebView$LogJs$2;->a:Ljava/lang/String;

    invoke-static {v1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appflood/mraid/AFBannerWebView;->a(Ljava/net/URI;)Z

    return-void
.end method

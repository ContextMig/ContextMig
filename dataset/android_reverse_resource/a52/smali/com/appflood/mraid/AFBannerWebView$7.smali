.class public final Lcom/appflood/mraid/AFBannerWebView$7;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/appflood/b/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appflood/mraid/AFBannerWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/appflood/mraid/AFBannerWebView;


# direct methods
.method public constructor <init>(Lcom/appflood/mraid/AFBannerWebView;)V
    .locals 0

    iput-object p1, p0, Lcom/appflood/mraid/AFBannerWebView$7;->a:Lcom/appflood/mraid/AFBannerWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final requestFailed$440c3042(I)V
    .locals 2

    iget-object v0, p0, Lcom/appflood/mraid/AFBannerWebView$7;->a:Lcom/appflood/mraid/AFBannerWebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/appflood/mraid/AFBannerWebView;->a(Z)V

    return-void
.end method

.method public final requestFinished(Lcom/appflood/b/b;)V
    .locals 3

    invoke-virtual {p1}, Lcom/appflood/b/b;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " is a url url = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/appflood/b/b;->a:Ljava/net/URL;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v1, p0, Lcom/appflood/mraid/AFBannerWebView$7;->a:Lcom/appflood/mraid/AFBannerWebView;

    invoke-virtual {v1, v0}, Lcom/appflood/mraid/AFBannerWebView;->a(Ljava/lang/String;)V

    return-void
.end method

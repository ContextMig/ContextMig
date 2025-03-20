.class Lde/baumann/browser/Activity/BrowserActivity$25;
.super Lde/baumann/browser/View/SwipeTouchListener;
.source "BrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/baumann/browser/Activity/BrowserActivity;->initOmnibox()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/baumann/browser/Activity/BrowserActivity;


# direct methods
.method constructor <init>(Lde/baumann/browser/Activity/BrowserActivity;Landroid/content/Context;)V
    .locals 0

    .line 1482
    iput-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$25;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-direct {p0, p2}, Lde/baumann/browser/View/SwipeTouchListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onSwipeBottom()V
    .locals 2

    .line 1490
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity$25;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    iget-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity$25;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-static {v1}, Lde/baumann/browser/Activity/BrowserActivity;->access$100(Lde/baumann/browser/Activity/BrowserActivity;)Lde/baumann/browser/Browser/AlbumController;

    move-result-object v1

    check-cast v1, Lde/baumann/browser/View/NinjaWebView;

    invoke-static {v0, v1}, Lde/baumann/browser/Activity/BrowserActivity;->access$1202(Lde/baumann/browser/Activity/BrowserActivity;Lde/baumann/browser/View/NinjaWebView;)Lde/baumann/browser/View/NinjaWebView;

    .line 1491
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity$25;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-static {v0}, Lde/baumann/browser/Activity/BrowserActivity;->access$1200(Lde/baumann/browser/Activity/BrowserActivity;)Lde/baumann/browser/View/NinjaWebView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lde/baumann/browser/View/NinjaWebView;->pageDown(Z)Z

    return-void
.end method

.method public onSwipeLeft()V
    .locals 2

    .line 1504
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity$25;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-static {v0}, Lde/baumann/browser/Activity/BrowserActivity;->access$1200(Lde/baumann/browser/Activity/BrowserActivity;)Lde/baumann/browser/View/NinjaWebView;

    move-result-object v0

    invoke-virtual {v0}, Lde/baumann/browser/View/NinjaWebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1505
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity$25;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-static {v0}, Lde/baumann/browser/Activity/BrowserActivity;->access$1200(Lde/baumann/browser/Activity/BrowserActivity;)Lde/baumann/browser/View/NinjaWebView;

    move-result-object v0

    invoke-virtual {v0}, Lde/baumann/browser/View/NinjaWebView;->goBack()V

    goto :goto_0

    .line 1507
    :cond_0
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity$25;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    iget-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity$25;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-static {v1}, Lde/baumann/browser/Activity/BrowserActivity;->access$100(Lde/baumann/browser/Activity/BrowserActivity;)Lde/baumann/browser/Browser/AlbumController;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/baumann/browser/Activity/BrowserActivity;->removeAlbum(Lde/baumann/browser/Browser/AlbumController;)V

    :goto_0
    return-void
.end method

.method public onSwipeRight()V
    .locals 2

    .line 1495
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity$25;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    iget-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity$25;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-static {v1}, Lde/baumann/browser/Activity/BrowserActivity;->access$100(Lde/baumann/browser/Activity/BrowserActivity;)Lde/baumann/browser/Browser/AlbumController;

    move-result-object v1

    check-cast v1, Lde/baumann/browser/View/NinjaWebView;

    invoke-static {v0, v1}, Lde/baumann/browser/Activity/BrowserActivity;->access$1202(Lde/baumann/browser/Activity/BrowserActivity;Lde/baumann/browser/View/NinjaWebView;)Lde/baumann/browser/View/NinjaWebView;

    .line 1496
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity$25;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-static {v0}, Lde/baumann/browser/Activity/BrowserActivity;->access$1200(Lde/baumann/browser/Activity/BrowserActivity;)Lde/baumann/browser/View/NinjaWebView;

    move-result-object v0

    invoke-virtual {v0}, Lde/baumann/browser/View/NinjaWebView;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1497
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity$25;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-static {v0}, Lde/baumann/browser/Activity/BrowserActivity;->access$1200(Lde/baumann/browser/Activity/BrowserActivity;)Lde/baumann/browser/View/NinjaWebView;

    move-result-object v0

    invoke-virtual {v0}, Lde/baumann/browser/View/NinjaWebView;->goForward()V

    goto :goto_0

    .line 1499
    :cond_0
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity$25;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    const v1, 0x7f0e0112

    invoke-static {v0, v1}, Lde/baumann/browser/View/NinjaToast;->show(Landroid/content/Context;I)V

    :goto_0
    return-void
.end method

.method public onSwipeTop()V
    .locals 2

    .line 1485
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity$25;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    iget-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity$25;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-static {v1}, Lde/baumann/browser/Activity/BrowserActivity;->access$100(Lde/baumann/browser/Activity/BrowserActivity;)Lde/baumann/browser/Browser/AlbumController;

    move-result-object v1

    check-cast v1, Lde/baumann/browser/View/NinjaWebView;

    invoke-static {v0, v1}, Lde/baumann/browser/Activity/BrowserActivity;->access$1202(Lde/baumann/browser/Activity/BrowserActivity;Lde/baumann/browser/View/NinjaWebView;)Lde/baumann/browser/View/NinjaWebView;

    .line 1486
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity$25;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-static {v0}, Lde/baumann/browser/Activity/BrowserActivity;->access$1200(Lde/baumann/browser/Activity/BrowserActivity;)Lde/baumann/browser/View/NinjaWebView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lde/baumann/browser/View/NinjaWebView;->pageUp(Z)Z

    return-void
.end method

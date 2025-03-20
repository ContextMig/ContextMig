.class Lde/baumann/browser/Activity/BrowserActivity$66;
.super Ljava/lang/Object;
.source "BrowserActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/baumann/browser/Activity/BrowserActivity;->removeAlbum(Lde/baumann/browser/Browser/AlbumController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/baumann/browser/Activity/BrowserActivity;

.field final synthetic val$controller:Lde/baumann/browser/Browser/AlbumController;


# direct methods
.method constructor <init>(Lde/baumann/browser/Activity/BrowserActivity;Lde/baumann/browser/Browser/AlbumController;)V
    .locals 0

    .line 2610
    iput-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$66;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    iput-object p2, p0, Lde/baumann/browser/Activity/BrowserActivity$66;->val$controller:Lde/baumann/browser/Browser/AlbumController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 2613
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity$66;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-static {v0}, Lde/baumann/browser/Activity/BrowserActivity;->access$4100(Lde/baumann/browser/Activity/BrowserActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity$66;->val$controller:Lde/baumann/browser/Browser/AlbumController;

    invoke-interface {v1}, Lde/baumann/browser/Browser/AlbumController;->getAlbumView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 2614
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity$66;->val$controller:Lde/baumann/browser/Browser/AlbumController;

    invoke-static {v0}, Lde/baumann/browser/Browser/BrowserContainer;->indexOf(Lde/baumann/browser/Browser/AlbumController;)I

    move-result v0

    .line 2615
    iget-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity$66;->val$controller:Lde/baumann/browser/Browser/AlbumController;

    invoke-static {v1}, Lde/baumann/browser/Browser/BrowserContainer;->remove(Lde/baumann/browser/Browser/AlbumController;)V

    .line 2616
    invoke-static {}, Lde/baumann/browser/Browser/BrowserContainer;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 2617
    invoke-static {}, Lde/baumann/browser/Browser/BrowserContainer;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 2619
    :cond_0
    iget-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity$66;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-static {v0}, Lde/baumann/browser/Browser/BrowserContainer;->get(I)Lde/baumann/browser/Browser/AlbumController;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lde/baumann/browser/Activity/BrowserActivity;->showAlbum(Lde/baumann/browser/Browser/AlbumController;Z)V

    return-void
.end method

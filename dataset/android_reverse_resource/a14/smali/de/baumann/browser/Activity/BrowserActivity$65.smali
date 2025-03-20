.class Lde/baumann/browser/Activity/BrowserActivity$65;
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

    .line 2595
    iput-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$65;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    iput-object p2, p0, Lde/baumann/browser/Activity/BrowserActivity$65;->val$controller:Lde/baumann/browser/Browser/AlbumController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 2598
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity$65;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-static {v0}, Lde/baumann/browser/Activity/BrowserActivity;->access$4100(Lde/baumann/browser/Activity/BrowserActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity$65;->val$controller:Lde/baumann/browser/Browser/AlbumController;

    invoke-interface {v1}, Lde/baumann/browser/Browser/AlbumController;->getAlbumView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 2599
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity$65;->val$controller:Lde/baumann/browser/Browser/AlbumController;

    invoke-static {v0}, Lde/baumann/browser/Browser/BrowserContainer;->remove(Lde/baumann/browser/Browser/AlbumController;)V

    return-void
.end method

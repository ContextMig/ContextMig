.class Lde/baumann/browser/Activity/BrowserActivity$2;
.super Ljava/lang/Object;
.source "BrowserActivity.java"

# interfaces
.implements Lde/baumann/browser/View/SwitcherPanel$StatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/baumann/browser/Activity/BrowserActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/baumann/browser/Activity/BrowserActivity;


# direct methods
.method constructor <init>(Lde/baumann/browser/Activity/BrowserActivity;)V
    .locals 0

    .line 396
    iput-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$2;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCollapsed()V
    .locals 3

    .line 399
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity$2;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-static {v0}, Lde/baumann/browser/Activity/BrowserActivity;->access$300(Lde/baumann/browser/Activity/BrowserActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->clearFocus()V

    .line 400
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity$2;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-static {v0}, Lde/baumann/browser/Activity/BrowserActivity;->access$100(Lde/baumann/browser/Activity/BrowserActivity;)Lde/baumann/browser/Browser/AlbumController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity$2;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-static {v0}, Lde/baumann/browser/Activity/BrowserActivity;->access$400(Lde/baumann/browser/Activity/BrowserActivity;)Landroid/widget/HorizontalScrollView;

    move-result-object v0

    iget-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity$2;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-static {v1}, Lde/baumann/browser/Activity/BrowserActivity;->access$100(Lde/baumann/browser/Activity/BrowserActivity;)Lde/baumann/browser/Browser/AlbumController;

    move-result-object v1

    invoke-interface {v1}, Lde/baumann/browser/Browser/AlbumController;->getAlbumView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    :cond_0
    return-void
.end method

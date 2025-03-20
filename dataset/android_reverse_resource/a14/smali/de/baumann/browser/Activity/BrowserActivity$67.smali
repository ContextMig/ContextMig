.class Lde/baumann/browser/Activity/BrowserActivity$67;
.super Ljava/lang/Object;
.source "BrowserActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/baumann/browser/Activity/BrowserActivity;->updateOmnibox()V
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

    .line 2662
    iput-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$67;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 2665
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity$67;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-static {v0}, Lde/baumann/browser/Activity/BrowserActivity;->access$100(Lde/baumann/browser/Activity/BrowserActivity;)Lde/baumann/browser/Browser/AlbumController;

    move-result-object v0

    iget-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity$67;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-static {v1}, Lde/baumann/browser/Activity/BrowserActivity;->access$100(Lde/baumann/browser/Activity/BrowserActivity;)Lde/baumann/browser/Browser/AlbumController;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-object v2, p0, Lde/baumann/browser/Activity/BrowserActivity$67;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-static {v2}, Lde/baumann/browser/Activity/BrowserActivity;->access$4200(Lde/baumann/browser/Activity/BrowserActivity;)F

    move-result v2

    iget-object v3, p0, Lde/baumann/browser/Activity/BrowserActivity$67;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-static {v3}, Lde/baumann/browser/Activity/BrowserActivity;->access$4300(Lde/baumann/browser/Activity/BrowserActivity;)F

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3, v4}, Lde/baumann/browser/Unit/ViewUnit;->capture(Landroid/view/View;FFLandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-interface {v0, v1}, Lde/baumann/browser/Browser/AlbumController;->setAlbumCover(Landroid/graphics/Bitmap;)V

    return-void
.end method

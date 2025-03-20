.class Lde/baumann/browser/View/NinjaWebView$2;
.super Ljava/lang/Object;
.source "NinjaWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/baumann/browser/View/NinjaWebView;->update(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/baumann/browser/View/NinjaWebView;


# direct methods
.method constructor <init>(Lde/baumann/browser/View/NinjaWebView;)V
    .locals 0

    .line 354
    iput-object p1, p0, Lde/baumann/browser/View/NinjaWebView$2;->this$0:Lde/baumann/browser/View/NinjaWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 357
    iget-object v0, p0, Lde/baumann/browser/View/NinjaWebView$2;->this$0:Lde/baumann/browser/View/NinjaWebView;

    iget-object v1, p0, Lde/baumann/browser/View/NinjaWebView$2;->this$0:Lde/baumann/browser/View/NinjaWebView;

    iget-object v2, p0, Lde/baumann/browser/View/NinjaWebView$2;->this$0:Lde/baumann/browser/View/NinjaWebView;

    invoke-static {v2}, Lde/baumann/browser/View/NinjaWebView;->access$100(Lde/baumann/browser/View/NinjaWebView;)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lde/baumann/browser/View/NinjaWebView$2;->this$0:Lde/baumann/browser/View/NinjaWebView;

    invoke-static {v3}, Lde/baumann/browser/View/NinjaWebView;->access$200(Lde/baumann/browser/View/NinjaWebView;)I

    move-result v3

    int-to-float v3, v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3, v4}, Lde/baumann/browser/Unit/ViewUnit;->capture(Landroid/view/View;FFLandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/baumann/browser/View/NinjaWebView;->setAlbumCover(Landroid/graphics/Bitmap;)V

    return-void
.end method

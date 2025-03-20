.class Lde/baumann/browser/Activity/BrowserActivity$33;
.super Ljava/lang/Object;
.source "BrowserActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/baumann/browser/Activity/BrowserActivity;->initHomeGrid(Lde/baumann/browser/View/NinjaRelativeLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/baumann/browser/Activity/BrowserActivity;

.field final synthetic val$layout:Lde/baumann/browser/View/NinjaRelativeLayout;


# direct methods
.method constructor <init>(Lde/baumann/browser/Activity/BrowserActivity;Lde/baumann/browser/View/NinjaRelativeLayout;)V
    .locals 0

    .line 1691
    iput-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$33;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    iput-object p2, p0, Lde/baumann/browser/Activity/BrowserActivity$33;->val$layout:Lde/baumann/browser/View/NinjaRelativeLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1694
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$33;->val$layout:Lde/baumann/browser/View/NinjaRelativeLayout;

    const/16 v0, 0x100

    invoke-virtual {p1, v0}, Lde/baumann/browser/View/NinjaRelativeLayout;->setFlag(I)V

    .line 1695
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$33;->val$layout:Lde/baumann/browser/View/NinjaRelativeLayout;

    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity$33;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    const v1, 0x7f0e001d

    invoke-virtual {v0, v1}, Lde/baumann/browser/Activity/BrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lde/baumann/browser/View/NinjaRelativeLayout;->setAlbumTitle(Ljava/lang/String;)V

    .line 1696
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$33;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity$33;->val$layout:Lde/baumann/browser/View/NinjaRelativeLayout;

    invoke-static {p1, v0}, Lde/baumann/browser/Activity/BrowserActivity;->access$2200(Lde/baumann/browser/Activity/BrowserActivity;Lde/baumann/browser/View/NinjaRelativeLayout;)V

    return-void
.end method

.class Lde/baumann/browser/Activity/BrowserActivity$1;
.super Ljava/lang/Object;
.source "BrowserActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


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

    .line 383
    iput-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$1;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .line 386
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity$1;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-static {v0}, Lde/baumann/browser/Activity/BrowserActivity;->access$000(Lde/baumann/browser/Activity/BrowserActivity;)Lde/baumann/browser/View/SwitcherPanel;

    move-result-object v0

    invoke-virtual {v0}, Lde/baumann/browser/View/SwitcherPanel;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity$1;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-static {v1}, Lde/baumann/browser/Activity/BrowserActivity;->access$000(Lde/baumann/browser/Activity/BrowserActivity;)Lde/baumann/browser/View/SwitcherPanel;

    move-result-object v1

    invoke-virtual {v1}, Lde/baumann/browser/View/SwitcherPanel;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 387
    iget-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity$1;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-static {v1}, Lde/baumann/browser/Activity/BrowserActivity;->access$100(Lde/baumann/browser/Activity/BrowserActivity;)Lde/baumann/browser/Browser/AlbumController;

    move-result-object v1

    if-eqz v1, :cond_1

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    .line 389
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity$1;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-static {v0}, Lde/baumann/browser/Activity/BrowserActivity;->access$200(Lde/baumann/browser/Activity/BrowserActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 391
    :cond_0
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity$1;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-static {v0}, Lde/baumann/browser/Activity/BrowserActivity;->access$200(Lde/baumann/browser/Activity/BrowserActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

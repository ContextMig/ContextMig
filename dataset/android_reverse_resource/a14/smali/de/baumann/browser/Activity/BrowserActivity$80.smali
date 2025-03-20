.class Lde/baumann/browser/Activity/BrowserActivity$80;
.super Ljava/lang/Object;
.source "BrowserActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/baumann/browser/Activity/BrowserActivity;->showGridMenu(Lde/baumann/browser/View/GridItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/baumann/browser/Activity/BrowserActivity;

.field final synthetic val$gridItem:Lde/baumann/browser/View/GridItem;


# direct methods
.method constructor <init>(Lde/baumann/browser/Activity/BrowserActivity;Lde/baumann/browser/View/GridItem;)V
    .locals 0

    .line 3236
    iput-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$80;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    iput-object p2, p0, Lde/baumann/browser/Activity/BrowserActivity$80;->val$gridItem:Lde/baumann/browser/View/GridItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 3239
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$80;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity$80;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    const v1, 0x7f0e0022

    invoke-virtual {v0, v1}, Lde/baumann/browser/Activity/BrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity$80;->val$gridItem:Lde/baumann/browser/View/GridItem;

    invoke-virtual {v1}, Lde/baumann/browser/View/GridItem;->getURL()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lde/baumann/browser/Activity/BrowserActivity;->access$2800(Lde/baumann/browser/Activity/BrowserActivity;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Message;)V

    .line 3240
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$80;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity$80;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    const v1, 0x7f0e0100

    invoke-virtual {v0, v1}, Lde/baumann/browser/Activity/BrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lde/baumann/browser/View/NinjaToast;->show(Landroid/content/Context;Ljava/lang/String;)V

    .line 3241
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$80;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-static {p1}, Lde/baumann/browser/Activity/BrowserActivity;->access$600(Lde/baumann/browser/Activity/BrowserActivity;)Landroid/support/design/widget/BottomSheetDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/design/widget/BottomSheetDialog;->cancel()V

    return-void
.end method

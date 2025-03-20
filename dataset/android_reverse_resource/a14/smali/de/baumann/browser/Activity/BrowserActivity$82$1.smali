.class Lde/baumann/browser/Activity/BrowserActivity$82$1;
.super Ljava/lang/Object;
.source "BrowserActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/baumann/browser/Activity/BrowserActivity$82;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lde/baumann/browser/Activity/BrowserActivity$82;


# direct methods
.method constructor <init>(Lde/baumann/browser/Activity/BrowserActivity$82;)V
    .locals 0

    .line 3266
    iput-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$82$1;->this$1:Lde/baumann/browser/Activity/BrowserActivity$82;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 3269
    new-instance p1, Lde/baumann/browser/Database/RecordAction;

    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity$82$1;->this$1:Lde/baumann/browser/Activity/BrowserActivity$82;

    iget-object v0, v0, Lde/baumann/browser/Activity/BrowserActivity$82;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-direct {p1, v0}, Lde/baumann/browser/Database/RecordAction;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 3270
    invoke-virtual {p1, v0}, Lde/baumann/browser/Database/RecordAction;->open(Z)V

    .line 3271
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity$82$1;->this$1:Lde/baumann/browser/Activity/BrowserActivity$82;

    iget-object v0, v0, Lde/baumann/browser/Activity/BrowserActivity$82;->val$gridItem:Lde/baumann/browser/View/GridItem;

    invoke-virtual {p1, v0}, Lde/baumann/browser/Database/RecordAction;->deleteGridItem(Lde/baumann/browser/View/GridItem;)V

    .line 3272
    invoke-virtual {p1}, Lde/baumann/browser/Database/RecordAction;->close()V

    .line 3273
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$82$1;->this$1:Lde/baumann/browser/Activity/BrowserActivity$82;

    iget-object p1, p1, Lde/baumann/browser/Activity/BrowserActivity$82;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity$82$1;->this$1:Lde/baumann/browser/Activity/BrowserActivity$82;

    iget-object v0, v0, Lde/baumann/browser/Activity/BrowserActivity$82;->val$gridItem:Lde/baumann/browser/View/GridItem;

    invoke-virtual {v0}, Lde/baumann/browser/View/GridItem;->getFilename()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lde/baumann/browser/Activity/BrowserActivity;->deleteFile(Ljava/lang/String;)Z

    .line 3274
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$82$1;->this$1:Lde/baumann/browser/Activity/BrowserActivity$82;

    iget-object p1, p1, Lde/baumann/browser/Activity/BrowserActivity$82;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity$82$1;->this$1:Lde/baumann/browser/Activity/BrowserActivity$82;

    iget-object v0, v0, Lde/baumann/browser/Activity/BrowserActivity$82;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-static {v0}, Lde/baumann/browser/Activity/BrowserActivity;->access$100(Lde/baumann/browser/Activity/BrowserActivity;)Lde/baumann/browser/Browser/AlbumController;

    move-result-object v0

    check-cast v0, Lde/baumann/browser/View/NinjaRelativeLayout;

    invoke-static {p1, v0}, Lde/baumann/browser/Activity/BrowserActivity;->access$2200(Lde/baumann/browser/Activity/BrowserActivity;Lde/baumann/browser/View/NinjaRelativeLayout;)V

    .line 3275
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$82$1;->this$1:Lde/baumann/browser/Activity/BrowserActivity$82;

    iget-object p1, p1, Lde/baumann/browser/Activity/BrowserActivity$82;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-static {p1}, Lde/baumann/browser/Activity/BrowserActivity;->access$600(Lde/baumann/browser/Activity/BrowserActivity;)Landroid/support/design/widget/BottomSheetDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/design/widget/BottomSheetDialog;->cancel()V

    .line 3276
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$82$1;->this$1:Lde/baumann/browser/Activity/BrowserActivity$82;

    iget-object p1, p1, Lde/baumann/browser/Activity/BrowserActivity$82;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity$82$1;->this$1:Lde/baumann/browser/Activity/BrowserActivity$82;

    iget-object v0, v0, Lde/baumann/browser/Activity/BrowserActivity$82;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    const v1, 0x7f0e00f1

    invoke-virtual {v0, v1}, Lde/baumann/browser/Activity/BrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lde/baumann/browser/View/NinjaToast;->show(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

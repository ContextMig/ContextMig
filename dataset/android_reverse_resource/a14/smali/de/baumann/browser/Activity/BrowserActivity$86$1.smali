.class Lde/baumann/browser/Activity/BrowserActivity$86$1;
.super Ljava/lang/Object;
.source "BrowserActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/baumann/browser/Activity/BrowserActivity$86;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lde/baumann/browser/Activity/BrowserActivity$86;


# direct methods
.method constructor <init>(Lde/baumann/browser/Activity/BrowserActivity$86;)V
    .locals 0

    .line 3347
    iput-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$86$1;->this$1:Lde/baumann/browser/Activity/BrowserActivity$86;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 3350
    new-instance p1, Lde/baumann/browser/Database/RecordAction;

    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity$86$1;->this$1:Lde/baumann/browser/Activity/BrowserActivity$86;

    iget-object v0, v0, Lde/baumann/browser/Activity/BrowserActivity$86;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-direct {p1, v0}, Lde/baumann/browser/Database/RecordAction;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 3351
    invoke-virtual {p1, v0}, Lde/baumann/browser/Database/RecordAction;->open(Z)V

    .line 3352
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity$86$1;->this$1:Lde/baumann/browser/Activity/BrowserActivity$86;

    iget-object v0, v0, Lde/baumann/browser/Activity/BrowserActivity$86;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-static {v0}, Lde/baumann/browser/Activity/BrowserActivity;->access$100(Lde/baumann/browser/Activity/BrowserActivity;)Lde/baumann/browser/Browser/AlbumController;

    move-result-object v0

    invoke-interface {v0}, Lde/baumann/browser/Browser/AlbumController;->getFlag()I

    move-result v0

    const/16 v1, 0x100

    if-ne v0, v1, :cond_0

    .line 3353
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity$86$1;->this$1:Lde/baumann/browser/Activity/BrowserActivity$86;

    iget-object v0, v0, Lde/baumann/browser/Activity/BrowserActivity$86;->val$record:Lde/baumann/browser/Database/Record;

    invoke-virtual {p1, v0}, Lde/baumann/browser/Database/RecordAction;->deleteBookmark(Lde/baumann/browser/Database/Record;)V

    goto :goto_0

    .line 3354
    :cond_0
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity$86$1;->this$1:Lde/baumann/browser/Activity/BrowserActivity$86;

    iget-object v0, v0, Lde/baumann/browser/Activity/BrowserActivity$86;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-static {v0}, Lde/baumann/browser/Activity/BrowserActivity;->access$100(Lde/baumann/browser/Activity/BrowserActivity;)Lde/baumann/browser/Browser/AlbumController;

    move-result-object v0

    invoke-interface {v0}, Lde/baumann/browser/Browser/AlbumController;->getFlag()I

    move-result v0

    const/16 v1, 0x101

    if-ne v0, v1, :cond_1

    .line 3355
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity$86$1;->this$1:Lde/baumann/browser/Activity/BrowserActivity$86;

    iget-object v0, v0, Lde/baumann/browser/Activity/BrowserActivity$86;->val$record:Lde/baumann/browser/Database/Record;

    invoke-virtual {p1, v0}, Lde/baumann/browser/Database/RecordAction;->deleteHistory(Lde/baumann/browser/Database/Record;)V

    .line 3357
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lde/baumann/browser/Database/RecordAction;->close()V

    .line 3358
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$86$1;->this$1:Lde/baumann/browser/Activity/BrowserActivity$86;

    iget-object p1, p1, Lde/baumann/browser/Activity/BrowserActivity$86;->val$recordList:Ljava/util/List;

    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity$86$1;->this$1:Lde/baumann/browser/Activity/BrowserActivity$86;

    iget v0, v0, Lde/baumann/browser/Activity/BrowserActivity$86;->val$location:I

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3359
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$86$1;->this$1:Lde/baumann/browser/Activity/BrowserActivity$86;

    iget-object p1, p1, Lde/baumann/browser/Activity/BrowserActivity$86;->val$adapterRecord:Lde/baumann/browser/View/Adapter_Record;

    invoke-virtual {p1}, Lde/baumann/browser/View/Adapter_Record;->notifyDataSetChanged()V

    .line 3360
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$86$1;->this$1:Lde/baumann/browser/Activity/BrowserActivity$86;

    iget-object p1, p1, Lde/baumann/browser/Activity/BrowserActivity$86;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-virtual {p1}, Lde/baumann/browser/Activity/BrowserActivity;->updateBookmarks()V

    .line 3361
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$86$1;->this$1:Lde/baumann/browser/Activity/BrowserActivity$86;

    iget-object p1, p1, Lde/baumann/browser/Activity/BrowserActivity$86;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-virtual {p1}, Lde/baumann/browser/Activity/BrowserActivity;->updateAutoComplete()V

    .line 3362
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$86$1;->this$1:Lde/baumann/browser/Activity/BrowserActivity$86;

    iget-object p1, p1, Lde/baumann/browser/Activity/BrowserActivity$86;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-static {p1}, Lde/baumann/browser/Activity/BrowserActivity;->access$600(Lde/baumann/browser/Activity/BrowserActivity;)Landroid/support/design/widget/BottomSheetDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/design/widget/BottomSheetDialog;->cancel()V

    .line 3363
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$86$1;->this$1:Lde/baumann/browser/Activity/BrowserActivity$86;

    iget-object p1, p1, Lde/baumann/browser/Activity/BrowserActivity$86;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity$86$1;->this$1:Lde/baumann/browser/Activity/BrowserActivity$86;

    iget-object v0, v0, Lde/baumann/browser/Activity/BrowserActivity$86;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    const v1, 0x7f0e00f1

    invoke-virtual {v0, v1}, Lde/baumann/browser/Activity/BrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lde/baumann/browser/View/NinjaToast;->show(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

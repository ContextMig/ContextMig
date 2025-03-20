.class Lde/baumann/browser/Activity/BrowserActivity$92;
.super Ljava/lang/Object;
.source "BrowserActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/baumann/browser/Activity/BrowserActivity;->showEditDialog(Lde/baumann/browser/View/Adapter_Record;Ljava/util/List;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/baumann/browser/Activity/BrowserActivity;

.field final synthetic val$adapterRecord:Lde/baumann/browser/View/Adapter_Record;

.field final synthetic val$editText:Landroid/widget/EditText;

.field final synthetic val$record:Lde/baumann/browser/Database/Record;


# direct methods
.method constructor <init>(Lde/baumann/browser/Activity/BrowserActivity;Landroid/widget/EditText;Lde/baumann/browser/Database/Record;Lde/baumann/browser/View/Adapter_Record;)V
    .locals 0

    .line 3497
    iput-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$92;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    iput-object p2, p0, Lde/baumann/browser/Activity/BrowserActivity$92;->val$editText:Landroid/widget/EditText;

    iput-object p3, p0, Lde/baumann/browser/Activity/BrowserActivity$92;->val$record:Lde/baumann/browser/Database/Record;

    iput-object p4, p0, Lde/baumann/browser/Activity/BrowserActivity$92;->val$adapterRecord:Lde/baumann/browser/View/Adapter_Record;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 3501
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$92;->val$editText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 3502
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3503
    iget-object p2, p0, Lde/baumann/browser/Activity/BrowserActivity$92;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity$92;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    const v1, 0x7f0e00fb

    invoke-virtual {v0, v1}, Lde/baumann/browser/Activity/BrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lde/baumann/browser/View/NinjaToast;->show(Landroid/content/Context;Ljava/lang/String;)V

    .line 3506
    :cond_0
    new-instance p2, Lde/baumann/browser/Database/RecordAction;

    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity$92;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-direct {p2, v0}, Lde/baumann/browser/Database/RecordAction;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 3507
    invoke-virtual {p2, v0}, Lde/baumann/browser/Database/RecordAction;->open(Z)V

    .line 3508
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity$92;->val$record:Lde/baumann/browser/Database/Record;

    invoke-virtual {v0, p1}, Lde/baumann/browser/Database/Record;->setTitle(Ljava/lang/String;)V

    .line 3509
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$92;->val$record:Lde/baumann/browser/Database/Record;

    invoke-virtual {p2, p1}, Lde/baumann/browser/Database/RecordAction;->updateBookmark(Lde/baumann/browser/Database/Record;)V

    .line 3510
    invoke-virtual {p2}, Lde/baumann/browser/Database/RecordAction;->close()V

    .line 3512
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$92;->val$adapterRecord:Lde/baumann/browser/View/Adapter_Record;

    invoke-virtual {p1}, Lde/baumann/browser/View/Adapter_Record;->notifyDataSetChanged()V

    .line 3513
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$92;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    iget-object p2, p0, Lde/baumann/browser/Activity/BrowserActivity$92;->val$editText:Landroid/widget/EditText;

    invoke-static {p1, p2}, Lde/baumann/browser/Activity/BrowserActivity;->access$1100(Lde/baumann/browser/Activity/BrowserActivity;Landroid/widget/EditText;)V

    return-void
.end method

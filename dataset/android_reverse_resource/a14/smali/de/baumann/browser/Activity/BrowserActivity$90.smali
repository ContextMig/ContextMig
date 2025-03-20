.class Lde/baumann/browser/Activity/BrowserActivity$90;
.super Ljava/lang/Object;
.source "BrowserActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/baumann/browser/Activity/BrowserActivity;->showEditDialog(Lde/baumann/browser/View/GridItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/baumann/browser/Activity/BrowserActivity;

.field final synthetic val$editText:Landroid/widget/EditText;

.field final synthetic val$gridItem:Lde/baumann/browser/View/GridItem;


# direct methods
.method constructor <init>(Lde/baumann/browser/Activity/BrowserActivity;Landroid/widget/EditText;Lde/baumann/browser/View/GridItem;)V
    .locals 0

    .line 3454
    iput-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$90;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    iput-object p2, p0, Lde/baumann/browser/Activity/BrowserActivity$90;->val$editText:Landroid/widget/EditText;

    iput-object p3, p0, Lde/baumann/browser/Activity/BrowserActivity$90;->val$gridItem:Lde/baumann/browser/View/GridItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 3458
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$90;->val$editText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 3459
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3460
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$90;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    iget-object p2, p0, Lde/baumann/browser/Activity/BrowserActivity$90;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    const v0, 0x7f0e00fb

    invoke-virtual {p2, v0}, Lde/baumann/browser/Activity/BrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lde/baumann/browser/View/NinjaToast;->show(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 3462
    :cond_0
    new-instance p2, Lde/baumann/browser/Database/RecordAction;

    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity$90;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-direct {p2, v0}, Lde/baumann/browser/Database/RecordAction;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 3463
    invoke-virtual {p2, v0}, Lde/baumann/browser/Database/RecordAction;->open(Z)V

    .line 3464
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity$90;->val$gridItem:Lde/baumann/browser/View/GridItem;

    invoke-virtual {v0, p1}, Lde/baumann/browser/View/GridItem;->setTitle(Ljava/lang/String;)V

    .line 3465
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$90;->val$gridItem:Lde/baumann/browser/View/GridItem;

    invoke-virtual {p2, p1}, Lde/baumann/browser/Database/RecordAction;->updateGridItem(Lde/baumann/browser/View/GridItem;)V

    .line 3466
    invoke-virtual {p2}, Lde/baumann/browser/Database/RecordAction;->close()V

    .line 3467
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$90;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    iget-object p2, p0, Lde/baumann/browser/Activity/BrowserActivity$90;->val$editText:Landroid/widget/EditText;

    invoke-static {p1, p2}, Lde/baumann/browser/Activity/BrowserActivity;->access$1100(Lde/baumann/browser/Activity/BrowserActivity;Landroid/widget/EditText;)V

    :goto_0
    return-void
.end method

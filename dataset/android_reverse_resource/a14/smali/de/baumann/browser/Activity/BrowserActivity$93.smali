.class Lde/baumann/browser/Activity/BrowserActivity$93;
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

.field final synthetic val$editText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lde/baumann/browser/Activity/BrowserActivity;Landroid/widget/EditText;)V
    .locals 0

    .line 3516
    iput-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$93;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    iput-object p2, p0, Lde/baumann/browser/Activity/BrowserActivity$93;->val$editText:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 3519
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 3520
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$93;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    iget-object p2, p0, Lde/baumann/browser/Activity/BrowserActivity$93;->val$editText:Landroid/widget/EditText;

    invoke-static {p1, p2}, Lde/baumann/browser/Activity/BrowserActivity;->access$1100(Lde/baumann/browser/Activity/BrowserActivity;Landroid/widget/EditText;)V

    return-void
.end method

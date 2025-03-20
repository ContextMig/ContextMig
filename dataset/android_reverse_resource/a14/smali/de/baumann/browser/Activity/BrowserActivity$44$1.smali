.class Lde/baumann/browser/Activity/BrowserActivity$44$1;
.super Ljava/lang/Object;
.source "BrowserActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/baumann/browser/Activity/BrowserActivity$44;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lde/baumann/browser/Activity/BrowserActivity$44;

.field final synthetic val$pass_attachment:Ljava/lang/String;

.field final synthetic val$pass_content:Ljava/lang/String;

.field final synthetic val$pass_icon:Ljava/lang/String;


# direct methods
.method constructor <init>(Lde/baumann/browser/Activity/BrowserActivity$44;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1881
    iput-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$44$1;->this$1:Lde/baumann/browser/Activity/BrowserActivity$44;

    iput-object p2, p0, Lde/baumann/browser/Activity/BrowserActivity$44$1;->val$pass_content:Ljava/lang/String;

    iput-object p3, p0, Lde/baumann/browser/Activity/BrowserActivity$44$1;->val$pass_icon:Ljava/lang/String;

    iput-object p4, p0, Lde/baumann/browser/Activity/BrowserActivity$44$1;->val$pass_attachment:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1884
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$44$1;->this$1:Lde/baumann/browser/Activity/BrowserActivity$44;

    iget-object p1, p1, Lde/baumann/browser/Activity/BrowserActivity$44;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-static {p1}, Lde/baumann/browser/Activity/BrowserActivity;->access$600(Lde/baumann/browser/Activity/BrowserActivity;)Landroid/support/design/widget/BottomSheetDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/design/widget/BottomSheetDialog;->cancel()V

    .line 1885
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$44$1;->this$1:Lde/baumann/browser/Activity/BrowserActivity$44;

    iget-object p1, p1, Lde/baumann/browser/Activity/BrowserActivity$44;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity$44$1;->this$1:Lde/baumann/browser/Activity/BrowserActivity$44;

    iget-object v0, v0, Lde/baumann/browser/Activity/BrowserActivity$44;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    const v1, 0x7f0e0022

    invoke-virtual {v0, v1}, Lde/baumann/browser/Activity/BrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity$44$1;->val$pass_content:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lde/baumann/browser/Activity/BrowserActivity;->access$2800(Lde/baumann/browser/Activity/BrowserActivity;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Message;)V

    .line 1886
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$44$1;->this$1:Lde/baumann/browser/Activity/BrowserActivity$44;

    iget-object p1, p1, Lde/baumann/browser/Activity/BrowserActivity$44;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity$44$1;->this$1:Lde/baumann/browser/Activity/BrowserActivity$44;

    iget-object v0, v0, Lde/baumann/browser/Activity/BrowserActivity$44;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    const v1, 0x7f0e0100

    invoke-virtual {v0, v1}, Lde/baumann/browser/Activity/BrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lde/baumann/browser/View/NinjaToast;->show(Landroid/content/Context;Ljava/lang/String;)V

    .line 1887
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$44$1;->this$1:Lde/baumann/browser/Activity/BrowserActivity$44;

    iget-object p1, p1, Lde/baumann/browser/Activity/BrowserActivity$44;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity$44$1;->val$pass_icon:Ljava/lang/String;

    iget-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity$44$1;->val$pass_attachment:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lde/baumann/browser/Activity/BrowserActivity;->access$2500(Lde/baumann/browser/Activity/BrowserActivity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

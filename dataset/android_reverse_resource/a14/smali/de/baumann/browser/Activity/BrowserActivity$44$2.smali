.class Lde/baumann/browser/Activity/BrowserActivity$44$2;
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

    .line 1893
    iput-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$44$2;->this$1:Lde/baumann/browser/Activity/BrowserActivity$44;

    iput-object p2, p0, Lde/baumann/browser/Activity/BrowserActivity$44$2;->val$pass_content:Ljava/lang/String;

    iput-object p3, p0, Lde/baumann/browser/Activity/BrowserActivity$44$2;->val$pass_icon:Ljava/lang/String;

    iput-object p4, p0, Lde/baumann/browser/Activity/BrowserActivity$44$2;->val$pass_attachment:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1896
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$44$2;->this$1:Lde/baumann/browser/Activity/BrowserActivity$44;

    iget-object p1, p1, Lde/baumann/browser/Activity/BrowserActivity$44;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-static {p1}, Lde/baumann/browser/Activity/BrowserActivity;->access$600(Lde/baumann/browser/Activity/BrowserActivity;)Landroid/support/design/widget/BottomSheetDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/design/widget/BottomSheetDialog;->cancel()V

    .line 1897
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$44$2;->this$1:Lde/baumann/browser/Activity/BrowserActivity$44;

    iget-object p1, p1, Lde/baumann/browser/Activity/BrowserActivity$44;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity$44$2;->val$pass_content:Ljava/lang/String;

    invoke-static {p1, v0}, Lde/baumann/browser/Activity/BrowserActivity;->access$3000(Lde/baumann/browser/Activity/BrowserActivity;Ljava/lang/String;)V

    .line 1898
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$44$2;->this$1:Lde/baumann/browser/Activity/BrowserActivity$44;

    iget-object p1, p1, Lde/baumann/browser/Activity/BrowserActivity$44;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity$44$2;->val$pass_icon:Ljava/lang/String;

    iget-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity$44$2;->val$pass_attachment:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lde/baumann/browser/Activity/BrowserActivity;->access$2500(Lde/baumann/browser/Activity/BrowserActivity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

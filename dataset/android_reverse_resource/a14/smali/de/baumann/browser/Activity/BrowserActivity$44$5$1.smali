.class Lde/baumann/browser/Activity/BrowserActivity$44$5$1;
.super Ljava/lang/Object;
.source "BrowserActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/baumann/browser/Activity/BrowserActivity$44$5;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lde/baumann/browser/Activity/BrowserActivity$44$5;


# direct methods
.method constructor <init>(Lde/baumann/browser/Activity/BrowserActivity$44$5;)V
    .locals 0

    .line 1986
    iput-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$44$5$1;->this$2:Lde/baumann/browser/Activity/BrowserActivity$44$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1989
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$44$5$1;->this$2:Lde/baumann/browser/Activity/BrowserActivity$44$5;

    iget-object p1, p1, Lde/baumann/browser/Activity/BrowserActivity$44$5;->this$1:Lde/baumann/browser/Activity/BrowserActivity$44;

    iget-object p1, p1, Lde/baumann/browser/Activity/BrowserActivity$44;->val$db:Lde/baumann/browser/Database/Pass;

    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity$44$5$1;->this$2:Lde/baumann/browser/Activity/BrowserActivity$44$5;

    iget-object v0, v0, Lde/baumann/browser/Activity/BrowserActivity$44$5;->val$_id:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lde/baumann/browser/Database/Pass;->delete(I)V

    .line 1990
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$44$5$1;->this$2:Lde/baumann/browser/Activity/BrowserActivity$44$5;

    iget-object p1, p1, Lde/baumann/browser/Activity/BrowserActivity$44$5;->this$1:Lde/baumann/browser/Activity/BrowserActivity$44;

    iget-object p1, p1, Lde/baumann/browser/Activity/BrowserActivity$44;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity$44$5$1;->this$2:Lde/baumann/browser/Activity/BrowserActivity$44$5;

    iget-object v0, v0, Lde/baumann/browser/Activity/BrowserActivity$44$5;->this$1:Lde/baumann/browser/Activity/BrowserActivity$44;

    iget-object v0, v0, Lde/baumann/browser/Activity/BrowserActivity$44;->val$layout:Lde/baumann/browser/View/NinjaRelativeLayout;

    invoke-static {p1, v0}, Lde/baumann/browser/Activity/BrowserActivity;->access$3400(Lde/baumann/browser/Activity/BrowserActivity;Lde/baumann/browser/View/NinjaRelativeLayout;)V

    .line 1991
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$44$5$1;->this$2:Lde/baumann/browser/Activity/BrowserActivity$44$5;

    iget-object p1, p1, Lde/baumann/browser/Activity/BrowserActivity$44$5;->this$1:Lde/baumann/browser/Activity/BrowserActivity$44;

    iget-object p1, p1, Lde/baumann/browser/Activity/BrowserActivity$44;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-static {p1}, Lde/baumann/browser/Activity/BrowserActivity;->access$600(Lde/baumann/browser/Activity/BrowserActivity;)Landroid/support/design/widget/BottomSheetDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/design/widget/BottomSheetDialog;->cancel()V

    return-void
.end method

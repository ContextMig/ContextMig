.class Lde/baumann/browser/Activity/BrowserActivity$44$5$2;
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

    .line 1995
    iput-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$44$5$2;->this$2:Lde/baumann/browser/Activity/BrowserActivity$44$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1998
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$44$5$2;->this$2:Lde/baumann/browser/Activity/BrowserActivity$44$5;

    iget-object p1, p1, Lde/baumann/browser/Activity/BrowserActivity$44$5;->this$1:Lde/baumann/browser/Activity/BrowserActivity$44;

    iget-object p1, p1, Lde/baumann/browser/Activity/BrowserActivity$44;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-static {p1}, Lde/baumann/browser/Activity/BrowserActivity;->access$600(Lde/baumann/browser/Activity/BrowserActivity;)Landroid/support/design/widget/BottomSheetDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/design/widget/BottomSheetDialog;->cancel()V

    return-void
.end method

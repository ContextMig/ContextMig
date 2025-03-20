.class Lde/baumann/browser/Activity/BrowserActivity$73;
.super Ljava/lang/Object;
.source "BrowserActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/baumann/browser/Activity/BrowserActivity;->onLongPress(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/baumann/browser/Activity/BrowserActivity;

.field final synthetic val$target:Ljava/lang/String;


# direct methods
.method constructor <init>(Lde/baumann/browser/Activity/BrowserActivity;Ljava/lang/String;)V
    .locals 0

    .line 2890
    iput-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$73;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    iput-object p2, p0, Lde/baumann/browser/Activity/BrowserActivity$73;->val$target:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 2893
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$73;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity$73;->val$target:Ljava/lang/String;

    invoke-static {p1, v0}, Lde/baumann/browser/Activity/BrowserActivity;->access$3000(Lde/baumann/browser/Activity/BrowserActivity;Ljava/lang/String;)V

    .line 2894
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$73;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-static {p1}, Lde/baumann/browser/Activity/BrowserActivity;->access$600(Lde/baumann/browser/Activity/BrowserActivity;)Landroid/support/design/widget/BottomSheetDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/design/widget/BottomSheetDialog;->cancel()V

    return-void
.end method

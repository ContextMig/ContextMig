.class Lde/baumann/browser/Activity/BrowserActivity$71;
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

    .line 2863
    iput-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$71;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    iput-object p2, p0, Lde/baumann/browser/Activity/BrowserActivity$71;->val$target:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 2866
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$71;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-static {p1}, Lde/baumann/browser/Activity/BrowserActivity;->access$4700(Lde/baumann/browser/Activity/BrowserActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2867
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$71;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity$71;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    const v1, 0x7f0e010a

    invoke-virtual {v0, v1}, Lde/baumann/browser/Activity/BrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lde/baumann/browser/View/NinjaToast;->show(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 2869
    :cond_0
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$71;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    const-string v0, ""

    iget-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity$71;->val$target:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lde/baumann/browser/Unit/IntentUnit;->share(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 2871
    :goto_0
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$71;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-static {p1}, Lde/baumann/browser/Activity/BrowserActivity;->access$600(Lde/baumann/browser/Activity/BrowserActivity;)Landroid/support/design/widget/BottomSheetDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/design/widget/BottomSheetDialog;->cancel()V

    return-void
.end method

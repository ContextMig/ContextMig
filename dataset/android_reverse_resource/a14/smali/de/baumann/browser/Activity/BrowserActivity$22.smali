.class Lde/baumann/browser/Activity/BrowserActivity$22;
.super Ljava/lang/Object;
.source "BrowserActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/baumann/browser/Activity/BrowserActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/baumann/browser/Activity/BrowserActivity;


# direct methods
.method constructor <init>(Lde/baumann/browser/Activity/BrowserActivity;)V
    .locals 0

    .line 1316
    iput-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$22;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1319
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$22;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-static {p1}, Lde/baumann/browser/Activity/BrowserActivity;->access$600(Lde/baumann/browser/Activity/BrowserActivity;)Landroid/support/design/widget/BottomSheetDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/design/widget/BottomSheetDialog;->cancel()V

    .line 1320
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$22;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-static {p1}, Lde/baumann/browser/Activity/BrowserActivity;->access$1200(Lde/baumann/browser/Activity/BrowserActivity;)Lde/baumann/browser/View/NinjaWebView;

    move-result-object p1

    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity$22;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-static {v0}, Lde/baumann/browser/Activity/BrowserActivity;->access$1400(Lde/baumann/browser/Activity/BrowserActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "http://"

    const-string v2, "https://"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lde/baumann/browser/View/NinjaWebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

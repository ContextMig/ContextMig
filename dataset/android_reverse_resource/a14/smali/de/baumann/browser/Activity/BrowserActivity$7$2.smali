.class Lde/baumann/browser/Activity/BrowserActivity$7$2;
.super Ljava/lang/Object;
.source "BrowserActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/baumann/browser/Activity/BrowserActivity$7;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lde/baumann/browser/Activity/BrowserActivity$7;


# direct methods
.method constructor <init>(Lde/baumann/browser/Activity/BrowserActivity$7;)V
    .locals 0

    .line 507
    iput-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$7$2;->this$1:Lde/baumann/browser/Activity/BrowserActivity$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 510
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$7$2;->this$1:Lde/baumann/browser/Activity/BrowserActivity$7;

    iget-object p1, p1, Lde/baumann/browser/Activity/BrowserActivity$7;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-static {p1}, Lde/baumann/browser/Activity/BrowserActivity;->access$600(Lde/baumann/browser/Activity/BrowserActivity;)Landroid/support/design/widget/BottomSheetDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/design/widget/BottomSheetDialog;->cancel()V

    return-void
.end method

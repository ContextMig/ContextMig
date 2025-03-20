.class Lde/baumann/browser/Activity/BrowserActivity$7;
.super Landroid/content/BroadcastReceiver;
.source "BrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/baumann/browser/Activity/BrowserActivity;->onCreate(Landroid/os/Bundle;)V
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

    .line 489
    iput-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$7;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 494
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$7;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    new-instance p2, Landroid/support/design/widget/BottomSheetDialog;

    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity$7;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-direct {p2, v0}, Landroid/support/design/widget/BottomSheetDialog;-><init>(Landroid/content/Context;)V

    invoke-static {p1, p2}, Lde/baumann/browser/Activity/BrowserActivity;->access$602(Lde/baumann/browser/Activity/BrowserActivity;Landroid/support/design/widget/BottomSheetDialog;)Landroid/support/design/widget/BottomSheetDialog;

    .line 495
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$7;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    const p2, 0x7f0b002b

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f09004b

    .line 496
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const v0, 0x7f0e00f3

    .line 497
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    const p2, 0x7f090019

    .line 498
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    .line 499
    new-instance v0, Lde/baumann/browser/Activity/BrowserActivity$7$1;

    invoke-direct {v0, p0}, Lde/baumann/browser/Activity/BrowserActivity$7$1;-><init>(Lde/baumann/browser/Activity/BrowserActivity$7;)V

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f09000f

    .line 506
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    .line 507
    new-instance v0, Lde/baumann/browser/Activity/BrowserActivity$7$2;

    invoke-direct {v0, p0}, Lde/baumann/browser/Activity/BrowserActivity$7$2;-><init>(Lde/baumann/browser/Activity/BrowserActivity$7;)V

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 513
    iget-object p2, p0, Lde/baumann/browser/Activity/BrowserActivity$7;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-static {p2}, Lde/baumann/browser/Activity/BrowserActivity;->access$600(Lde/baumann/browser/Activity/BrowserActivity;)Landroid/support/design/widget/BottomSheetDialog;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/support/design/widget/BottomSheetDialog;->setContentView(Landroid/view/View;)V

    .line 514
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$7;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-static {p1}, Lde/baumann/browser/Activity/BrowserActivity;->access$600(Lde/baumann/browser/Activity/BrowserActivity;)Landroid/support/design/widget/BottomSheetDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/design/widget/BottomSheetDialog;->show()V

    return-void
.end method

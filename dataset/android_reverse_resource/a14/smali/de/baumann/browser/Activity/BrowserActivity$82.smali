.class Lde/baumann/browser/Activity/BrowserActivity$82;
.super Ljava/lang/Object;
.source "BrowserActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/baumann/browser/Activity/BrowserActivity;->showGridMenu(Lde/baumann/browser/View/GridItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/baumann/browser/Activity/BrowserActivity;

.field final synthetic val$gridItem:Lde/baumann/browser/View/GridItem;


# direct methods
.method constructor <init>(Lde/baumann/browser/Activity/BrowserActivity;Lde/baumann/browser/View/GridItem;)V
    .locals 0

    .line 3257
    iput-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$82;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    iput-object p2, p0, Lde/baumann/browser/Activity/BrowserActivity$82;->val$gridItem:Lde/baumann/browser/View/GridItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 3260
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$82;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-static {p1}, Lde/baumann/browser/Activity/BrowserActivity;->access$600(Lde/baumann/browser/Activity/BrowserActivity;)Landroid/support/design/widget/BottomSheetDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/design/widget/BottomSheetDialog;->cancel()V

    .line 3261
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$82;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    new-instance v0, Landroid/support/design/widget/BottomSheetDialog;

    iget-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity$82;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-direct {v0, v1}, Landroid/support/design/widget/BottomSheetDialog;-><init>(Landroid/content/Context;)V

    invoke-static {p1, v0}, Lde/baumann/browser/Activity/BrowserActivity;->access$602(Lde/baumann/browser/Activity/BrowserActivity;Landroid/support/design/widget/BottomSheetDialog;)Landroid/support/design/widget/BottomSheetDialog;

    .line 3262
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$82;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    const v0, 0x7f0b002b

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f09004b

    .line 3263
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0e010c

    .line 3264
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f090019

    .line 3265
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 3266
    new-instance v1, Lde/baumann/browser/Activity/BrowserActivity$82$1;

    invoke-direct {v1, p0}, Lde/baumann/browser/Activity/BrowserActivity$82$1;-><init>(Lde/baumann/browser/Activity/BrowserActivity$82;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09000f

    .line 3279
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 3280
    new-instance v1, Lde/baumann/browser/Activity/BrowserActivity$82$2;

    invoke-direct {v1, p0}, Lde/baumann/browser/Activity/BrowserActivity$82$2;-><init>(Lde/baumann/browser/Activity/BrowserActivity$82;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3286
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity$82;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-static {v0}, Lde/baumann/browser/Activity/BrowserActivity;->access$600(Lde/baumann/browser/Activity/BrowserActivity;)Landroid/support/design/widget/BottomSheetDialog;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/design/widget/BottomSheetDialog;->setContentView(Landroid/view/View;)V

    .line 3287
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$82;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-static {p1}, Lde/baumann/browser/Activity/BrowserActivity;->access$600(Lde/baumann/browser/Activity/BrowserActivity;)Landroid/support/design/widget/BottomSheetDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/design/widget/BottomSheetDialog;->show()V

    return-void
.end method

.class Lde/baumann/browser/Activity/BrowserActivity$86;
.super Ljava/lang/Object;
.source "BrowserActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/baumann/browser/Activity/BrowserActivity;->showListMenu(Lde/baumann/browser/View/Adapter_Record;Ljava/util/List;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/baumann/browser/Activity/BrowserActivity;

.field final synthetic val$adapterRecord:Lde/baumann/browser/View/Adapter_Record;

.field final synthetic val$location:I

.field final synthetic val$record:Lde/baumann/browser/Database/Record;

.field final synthetic val$recordList:Ljava/util/List;


# direct methods
.method constructor <init>(Lde/baumann/browser/Activity/BrowserActivity;Lde/baumann/browser/Database/Record;Ljava/util/List;ILde/baumann/browser/View/Adapter_Record;)V
    .locals 0

    .line 3338
    iput-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$86;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    iput-object p2, p0, Lde/baumann/browser/Activity/BrowserActivity$86;->val$record:Lde/baumann/browser/Database/Record;

    iput-object p3, p0, Lde/baumann/browser/Activity/BrowserActivity$86;->val$recordList:Ljava/util/List;

    iput p4, p0, Lde/baumann/browser/Activity/BrowserActivity$86;->val$location:I

    iput-object p5, p0, Lde/baumann/browser/Activity/BrowserActivity$86;->val$adapterRecord:Lde/baumann/browser/View/Adapter_Record;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 3341
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$86;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-static {p1}, Lde/baumann/browser/Activity/BrowserActivity;->access$600(Lde/baumann/browser/Activity/BrowserActivity;)Landroid/support/design/widget/BottomSheetDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/design/widget/BottomSheetDialog;->cancel()V

    .line 3342
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$86;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    new-instance v0, Landroid/support/design/widget/BottomSheetDialog;

    iget-object v1, p0, Lde/baumann/browser/Activity/BrowserActivity$86;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-direct {v0, v1}, Landroid/support/design/widget/BottomSheetDialog;-><init>(Landroid/content/Context;)V

    invoke-static {p1, v0}, Lde/baumann/browser/Activity/BrowserActivity;->access$602(Lde/baumann/browser/Activity/BrowserActivity;Landroid/support/design/widget/BottomSheetDialog;)Landroid/support/design/widget/BottomSheetDialog;

    .line 3343
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$86;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    const v0, 0x7f0b002b

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f09004b

    .line 3344
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0e010c

    .line 3345
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f090019

    .line 3346
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 3347
    new-instance v1, Lde/baumann/browser/Activity/BrowserActivity$86$1;

    invoke-direct {v1, p0}, Lde/baumann/browser/Activity/BrowserActivity$86$1;-><init>(Lde/baumann/browser/Activity/BrowserActivity$86;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09000f

    .line 3366
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 3367
    new-instance v1, Lde/baumann/browser/Activity/BrowserActivity$86$2;

    invoke-direct {v1, p0}, Lde/baumann/browser/Activity/BrowserActivity$86$2;-><init>(Lde/baumann/browser/Activity/BrowserActivity$86;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3373
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity$86;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-static {v0}, Lde/baumann/browser/Activity/BrowserActivity;->access$600(Lde/baumann/browser/Activity/BrowserActivity;)Landroid/support/design/widget/BottomSheetDialog;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/design/widget/BottomSheetDialog;->setContentView(Landroid/view/View;)V

    .line 3374
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$86;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-static {p1}, Lde/baumann/browser/Activity/BrowserActivity;->access$600(Lde/baumann/browser/Activity/BrowserActivity;)Landroid/support/design/widget/BottomSheetDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/design/widget/BottomSheetDialog;->show()V

    return-void
.end method

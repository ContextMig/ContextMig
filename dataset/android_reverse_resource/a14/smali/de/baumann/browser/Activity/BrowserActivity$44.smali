.class Lde/baumann/browser/Activity/BrowserActivity$44;
.super Ljava/lang/Object;
.source "BrowserActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/baumann/browser/Activity/BrowserActivity;->initPSList(Lde/baumann/browser/View/NinjaRelativeLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/baumann/browser/Activity/BrowserActivity;

.field final synthetic val$db:Lde/baumann/browser/Database/Pass;

.field final synthetic val$layout:Lde/baumann/browser/View/NinjaRelativeLayout;


# direct methods
.method constructor <init>(Lde/baumann/browser/Activity/BrowserActivity;Lde/baumann/browser/Database/Pass;Lde/baumann/browser/View/NinjaRelativeLayout;)V
    .locals 0

    .line 1866
    iput-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$44;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    iput-object p2, p0, Lde/baumann/browser/Activity/BrowserActivity$44;->val$db:Lde/baumann/browser/Database/Pass;

    iput-object p3, p0, Lde/baumann/browser/Activity/BrowserActivity$44;->val$layout:Lde/baumann/browser/View/NinjaRelativeLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .line 1869
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$44;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-static {p1}, Lde/baumann/browser/Activity/BrowserActivity;->access$2600(Lde/baumann/browser/Activity/BrowserActivity;)Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/database/Cursor;

    const-string p2, "_id"

    .line 1870
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "pass_title"

    .line 1871
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p3

    invoke-interface {p1, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string p3, "pass_content"

    .line 1872
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p3

    invoke-interface {p1, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string p3, "pass_icon"

    .line 1873
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p3

    invoke-interface {p1, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string p3, "pass_attachment"

    .line 1874
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p3

    invoke-interface {p1, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1876
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$44;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    new-instance p3, Landroid/support/design/widget/BottomSheetDialog;

    iget-object p4, p0, Lde/baumann/browser/Activity/BrowserActivity$44;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-direct {p3, p4}, Landroid/support/design/widget/BottomSheetDialog;-><init>(Landroid/content/Context;)V

    invoke-static {p1, p3}, Lde/baumann/browser/Activity/BrowserActivity;->access$602(Lde/baumann/browser/Activity/BrowserActivity;Landroid/support/design/widget/BottomSheetDialog;)Landroid/support/design/widget/BottomSheetDialog;

    .line 1877
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$44;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    const p3, 0x7f0b0032

    const/4 p4, 0x0

    invoke-static {p1, p3, p4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 1879
    iget-object p3, p0, Lde/baumann/browser/Activity/BrowserActivity$44;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    const p4, 0x7f090110

    invoke-virtual {p1, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/LinearLayout;

    invoke-static {p3, p4}, Lde/baumann/browser/Activity/BrowserActivity;->access$2702(Lde/baumann/browser/Activity/BrowserActivity;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    .line 1880
    iget-object p3, p0, Lde/baumann/browser/Activity/BrowserActivity$44;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-static {p3}, Lde/baumann/browser/Activity/BrowserActivity;->access$2700(Lde/baumann/browser/Activity/BrowserActivity;)Landroid/widget/LinearLayout;

    move-result-object p3

    const/4 p4, 0x0

    invoke-virtual {p3, p4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1881
    iget-object p3, p0, Lde/baumann/browser/Activity/BrowserActivity$44;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-static {p3}, Lde/baumann/browser/Activity/BrowserActivity;->access$2700(Lde/baumann/browser/Activity/BrowserActivity;)Landroid/widget/LinearLayout;

    move-result-object p3

    new-instance p5, Lde/baumann/browser/Activity/BrowserActivity$44$1;

    invoke-direct {p5, p0, v6, v2, v3}, Lde/baumann/browser/Activity/BrowserActivity$44$1;-><init>(Lde/baumann/browser/Activity/BrowserActivity$44;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, p5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1891
    iget-object p3, p0, Lde/baumann/browser/Activity/BrowserActivity$44;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    const p5, 0x7f090111

    invoke-virtual {p1, p5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p5

    check-cast p5, Landroid/widget/LinearLayout;

    invoke-static {p3, p5}, Lde/baumann/browser/Activity/BrowserActivity;->access$2902(Lde/baumann/browser/Activity/BrowserActivity;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    .line 1892
    iget-object p3, p0, Lde/baumann/browser/Activity/BrowserActivity$44;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-static {p3}, Lde/baumann/browser/Activity/BrowserActivity;->access$2900(Lde/baumann/browser/Activity/BrowserActivity;)Landroid/widget/LinearLayout;

    move-result-object p3

    invoke-virtual {p3, p4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1893
    iget-object p3, p0, Lde/baumann/browser/Activity/BrowserActivity$44;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-static {p3}, Lde/baumann/browser/Activity/BrowserActivity;->access$2900(Lde/baumann/browser/Activity/BrowserActivity;)Landroid/widget/LinearLayout;

    move-result-object p3

    new-instance p5, Lde/baumann/browser/Activity/BrowserActivity$44$2;

    invoke-direct {p5, p0, v6, v2, v3}, Lde/baumann/browser/Activity/BrowserActivity$44$2;-><init>(Lde/baumann/browser/Activity/BrowserActivity$44;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, p5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1902
    iget-object p3, p0, Lde/baumann/browser/Activity/BrowserActivity$44;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    const p5, 0x7f090112

    invoke-virtual {p1, p5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p5

    check-cast p5, Landroid/widget/LinearLayout;

    invoke-static {p3, p5}, Lde/baumann/browser/Activity/BrowserActivity;->access$3102(Lde/baumann/browser/Activity/BrowserActivity;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    .line 1903
    iget-object p3, p0, Lde/baumann/browser/Activity/BrowserActivity$44;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-static {p3}, Lde/baumann/browser/Activity/BrowserActivity;->access$3100(Lde/baumann/browser/Activity/BrowserActivity;)Landroid/widget/LinearLayout;

    move-result-object p3

    invoke-virtual {p3, p4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1904
    iget-object p3, p0, Lde/baumann/browser/Activity/BrowserActivity$44;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-static {p3}, Lde/baumann/browser/Activity/BrowserActivity;->access$3100(Lde/baumann/browser/Activity/BrowserActivity;)Landroid/widget/LinearLayout;

    move-result-object p3

    new-instance p5, Lde/baumann/browser/Activity/BrowserActivity$44$3;

    invoke-direct {p5, p0, v2, v3}, Lde/baumann/browser/Activity/BrowserActivity$44$3;-><init>(Lde/baumann/browser/Activity/BrowserActivity$44;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, p5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1912
    iget-object p3, p0, Lde/baumann/browser/Activity/BrowserActivity$44;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    const p5, 0x7f09010f

    invoke-virtual {p1, p5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p5

    check-cast p5, Landroid/widget/LinearLayout;

    invoke-static {p3, p5}, Lde/baumann/browser/Activity/BrowserActivity;->access$3202(Lde/baumann/browser/Activity/BrowserActivity;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    .line 1913
    iget-object p3, p0, Lde/baumann/browser/Activity/BrowserActivity$44;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-static {p3}, Lde/baumann/browser/Activity/BrowserActivity;->access$3200(Lde/baumann/browser/Activity/BrowserActivity;)Landroid/widget/LinearLayout;

    move-result-object p3

    invoke-virtual {p3, p4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1914
    iget-object p3, p0, Lde/baumann/browser/Activity/BrowserActivity$44;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-static {p3}, Lde/baumann/browser/Activity/BrowserActivity;->access$3200(Lde/baumann/browser/Activity/BrowserActivity;)Landroid/widget/LinearLayout;

    move-result-object p3

    new-instance p5, Lde/baumann/browser/Activity/BrowserActivity$44$4;

    move-object v0, p5

    move-object v1, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lde/baumann/browser/Activity/BrowserActivity$44$4;-><init>(Lde/baumann/browser/Activity/BrowserActivity$44;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, p5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1975
    iget-object p3, p0, Lde/baumann/browser/Activity/BrowserActivity$44;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    const p5, 0x7f09010e

    invoke-virtual {p1, p5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p5

    check-cast p5, Landroid/widget/LinearLayout;

    invoke-static {p3, p5}, Lde/baumann/browser/Activity/BrowserActivity;->access$3502(Lde/baumann/browser/Activity/BrowserActivity;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    .line 1976
    iget-object p3, p0, Lde/baumann/browser/Activity/BrowserActivity$44;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-static {p3}, Lde/baumann/browser/Activity/BrowserActivity;->access$3500(Lde/baumann/browser/Activity/BrowserActivity;)Landroid/widget/LinearLayout;

    move-result-object p3

    invoke-virtual {p3, p4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1977
    iget-object p3, p0, Lde/baumann/browser/Activity/BrowserActivity$44;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-static {p3}, Lde/baumann/browser/Activity/BrowserActivity;->access$3500(Lde/baumann/browser/Activity/BrowserActivity;)Landroid/widget/LinearLayout;

    move-result-object p3

    new-instance p4, Lde/baumann/browser/Activity/BrowserActivity$44$5;

    invoke-direct {p4, p0, p2}, Lde/baumann/browser/Activity/BrowserActivity$44$5;-><init>(Lde/baumann/browser/Activity/BrowserActivity$44;Ljava/lang/String;)V

    invoke-virtual {p3, p4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2006
    iget-object p2, p0, Lde/baumann/browser/Activity/BrowserActivity$44;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-static {p2}, Lde/baumann/browser/Activity/BrowserActivity;->access$600(Lde/baumann/browser/Activity/BrowserActivity;)Landroid/support/design/widget/BottomSheetDialog;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/support/design/widget/BottomSheetDialog;->setContentView(Landroid/view/View;)V

    .line 2007
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$44;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-static {p1}, Lde/baumann/browser/Activity/BrowserActivity;->access$600(Lde/baumann/browser/Activity/BrowserActivity;)Landroid/support/design/widget/BottomSheetDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/design/widget/BottomSheetDialog;->show()V

    const/4 p1, 0x1

    return p1
.end method

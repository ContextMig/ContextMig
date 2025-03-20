.class Lde/baumann/browser/Activity/BrowserActivity$43;
.super Ljava/lang/Object;
.source "BrowserActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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

.field final synthetic val$row:Landroid/database/Cursor;


# direct methods
.method constructor <init>(Lde/baumann/browser/Activity/BrowserActivity;Landroid/database/Cursor;)V
    .locals 0

    .line 1855
    iput-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$43;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    iput-object p2, p0, Lde/baumann/browser/Activity/BrowserActivity$43;->val$row:Landroid/database/Cursor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1858
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$43;->val$row:Landroid/database/Cursor;

    iget-object p2, p0, Lde/baumann/browser/Activity/BrowserActivity$43;->val$row:Landroid/database/Cursor;

    const-string p3, "pass_content"

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 1859
    iget-object p2, p0, Lde/baumann/browser/Activity/BrowserActivity$43;->val$row:Landroid/database/Cursor;

    iget-object p3, p0, Lde/baumann/browser/Activity/BrowserActivity$43;->val$row:Landroid/database/Cursor;

    const-string p4, "pass_icon"

    invoke-interface {p3, p4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p3

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 1860
    iget-object p3, p0, Lde/baumann/browser/Activity/BrowserActivity$43;->val$row:Landroid/database/Cursor;

    iget-object p4, p0, Lde/baumann/browser/Activity/BrowserActivity$43;->val$row:Landroid/database/Cursor;

    const-string p5, "pass_attachment"

    invoke-interface {p4, p5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p4

    invoke-interface {p3, p4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 1861
    iget-object p4, p0, Lde/baumann/browser/Activity/BrowserActivity$43;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-static {p4, p1}, Lde/baumann/browser/Activity/BrowserActivity;->access$1000(Lde/baumann/browser/Activity/BrowserActivity;Ljava/lang/String;)V

    .line 1862
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$43;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-static {p1, p2, p3}, Lde/baumann/browser/Activity/BrowserActivity;->access$2500(Lde/baumann/browser/Activity/BrowserActivity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

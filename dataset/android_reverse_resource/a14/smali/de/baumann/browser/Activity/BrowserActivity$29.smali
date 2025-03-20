.class Lde/baumann/browser/Activity/BrowserActivity$29;
.super Ljava/lang/Object;
.source "BrowserActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/baumann/browser/Activity/BrowserActivity;->initHomeGrid(Lde/baumann/browser/View/NinjaRelativeLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/baumann/browser/Activity/BrowserActivity;

.field final synthetic val$gridList:Ljava/util/List;


# direct methods
.method constructor <init>(Lde/baumann/browser/Activity/BrowserActivity;Ljava/util/List;)V
    .locals 0

    .line 1623
    iput-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$29;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    iput-object p2, p0, Lde/baumann/browser/Activity/BrowserActivity$29;->val$gridList:Ljava/util/List;

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

    .line 1626
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$29;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    iget-object p2, p0, Lde/baumann/browser/Activity/BrowserActivity$29;->val$gridList:Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lde/baumann/browser/View/GridItem;

    invoke-virtual {p2}, Lde/baumann/browser/View/GridItem;->getURL()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lde/baumann/browser/Activity/BrowserActivity;->access$1000(Lde/baumann/browser/Activity/BrowserActivity;Ljava/lang/String;)V

    return-void
.end method

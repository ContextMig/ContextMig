.class Lde/baumann/browser/Activity/BrowserActivity$30;
.super Ljava/lang/Object;
.source "BrowserActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


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

    .line 1630
    iput-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$30;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    iput-object p2, p0, Lde/baumann/browser/Activity/BrowserActivity$30;->val$gridList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .line 1633
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$30;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    iget-object p2, p0, Lde/baumann/browser/Activity/BrowserActivity$30;->val$gridList:Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lde/baumann/browser/View/GridItem;

    invoke-static {p1, p2}, Lde/baumann/browser/Activity/BrowserActivity;->access$2100(Lde/baumann/browser/Activity/BrowserActivity;Lde/baumann/browser/View/GridItem;)V

    const/4 p1, 0x1

    return p1
.end method

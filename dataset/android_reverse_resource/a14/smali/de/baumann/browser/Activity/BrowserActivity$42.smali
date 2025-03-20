.class Lde/baumann/browser/Activity/BrowserActivity$42;
.super Ljava/lang/Object;
.source "BrowserActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/baumann/browser/Activity/BrowserActivity;->initBHList(Lde/baumann/browser/View/NinjaRelativeLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/baumann/browser/Activity/BrowserActivity;

.field final synthetic val$adapter:Lde/baumann/browser/View/Adapter_Record;

.field final synthetic val$list:Ljava/util/List;


# direct methods
.method constructor <init>(Lde/baumann/browser/Activity/BrowserActivity;Lde/baumann/browser/View/Adapter_Record;Ljava/util/List;)V
    .locals 0

    .line 1825
    iput-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$42;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    iput-object p2, p0, Lde/baumann/browser/Activity/BrowserActivity$42;->val$adapter:Lde/baumann/browser/View/Adapter_Record;

    iput-object p3, p0, Lde/baumann/browser/Activity/BrowserActivity$42;->val$list:Ljava/util/List;

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

    .line 1828
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$42;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    iget-object p2, p0, Lde/baumann/browser/Activity/BrowserActivity$42;->val$adapter:Lde/baumann/browser/View/Adapter_Record;

    iget-object p4, p0, Lde/baumann/browser/Activity/BrowserActivity$42;->val$list:Ljava/util/List;

    invoke-static {p1, p2, p4, p3}, Lde/baumann/browser/Activity/BrowserActivity;->access$2400(Lde/baumann/browser/Activity/BrowserActivity;Lde/baumann/browser/View/Adapter_Record;Ljava/util/List;I)V

    const/4 p1, 0x1

    return p1
.end method

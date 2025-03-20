.class Lde/baumann/browser/Activity/BrowserActivity$81;
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

    .line 3247
    iput-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$81;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    iput-object p2, p0, Lde/baumann/browser/Activity/BrowserActivity$81;->val$gridItem:Lde/baumann/browser/View/GridItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 3250
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$81;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity$81;->val$gridItem:Lde/baumann/browser/View/GridItem;

    invoke-virtual {v0}, Lde/baumann/browser/View/GridItem;->getURL()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lde/baumann/browser/Activity/BrowserActivity;->access$3000(Lde/baumann/browser/Activity/BrowserActivity;Ljava/lang/String;)V

    .line 3251
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$81;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-static {p1}, Lde/baumann/browser/Activity/BrowserActivity;->access$600(Lde/baumann/browser/Activity/BrowserActivity;)Landroid/support/design/widget/BottomSheetDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/design/widget/BottomSheetDialog;->cancel()V

    return-void
.end method

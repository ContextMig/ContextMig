.class Lde/baumann/browser/Activity/Whitelist_Javascript$2;
.super Ljava/lang/Object;
.source "Whitelist_Javascript.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/baumann/browser/Activity/Whitelist_Javascript;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/baumann/browser/Activity/Whitelist_Javascript;

.field final synthetic val$dialog:Landroid/support/design/widget/BottomSheetDialog;


# direct methods
.method constructor <init>(Lde/baumann/browser/Activity/Whitelist_Javascript;Landroid/support/design/widget/BottomSheetDialog;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lde/baumann/browser/Activity/Whitelist_Javascript$2;->this$0:Lde/baumann/browser/Activity/Whitelist_Javascript;

    iput-object p2, p0, Lde/baumann/browser/Activity/Whitelist_Javascript$2;->val$dialog:Landroid/support/design/widget/BottomSheetDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 110
    new-instance p1, Lde/baumann/browser/Browser/Javascript;

    iget-object v0, p0, Lde/baumann/browser/Activity/Whitelist_Javascript$2;->this$0:Lde/baumann/browser/Activity/Whitelist_Javascript;

    invoke-direct {p1, v0}, Lde/baumann/browser/Browser/Javascript;-><init>(Landroid/content/Context;)V

    .line 111
    invoke-virtual {p1}, Lde/baumann/browser/Browser/Javascript;->clearDomains()V

    .line 112
    iget-object p1, p0, Lde/baumann/browser/Activity/Whitelist_Javascript$2;->this$0:Lde/baumann/browser/Activity/Whitelist_Javascript;

    invoke-static {p1}, Lde/baumann/browser/Activity/Whitelist_Javascript;->access$000(Lde/baumann/browser/Activity/Whitelist_Javascript;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 113
    iget-object p1, p0, Lde/baumann/browser/Activity/Whitelist_Javascript$2;->this$0:Lde/baumann/browser/Activity/Whitelist_Javascript;

    invoke-static {p1}, Lde/baumann/browser/Activity/Whitelist_Javascript;->access$100(Lde/baumann/browser/Activity/Whitelist_Javascript;)Lde/baumann/browser/View/Adapter_Javascript;

    move-result-object p1

    invoke-virtual {p1}, Lde/baumann/browser/View/Adapter_Javascript;->notifyDataSetChanged()V

    .line 114
    iget-object p1, p0, Lde/baumann/browser/Activity/Whitelist_Javascript$2;->val$dialog:Landroid/support/design/widget/BottomSheetDialog;

    invoke-virtual {p1}, Landroid/support/design/widget/BottomSheetDialog;->cancel()V

    return-void
.end method

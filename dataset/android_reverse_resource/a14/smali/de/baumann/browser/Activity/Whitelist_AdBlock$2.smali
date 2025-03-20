.class Lde/baumann/browser/Activity/Whitelist_AdBlock$2;
.super Ljava/lang/Object;
.source "Whitelist_AdBlock.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/baumann/browser/Activity/Whitelist_AdBlock;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/baumann/browser/Activity/Whitelist_AdBlock;

.field final synthetic val$dialog:Landroid/support/design/widget/BottomSheetDialog;


# direct methods
.method constructor <init>(Lde/baumann/browser/Activity/Whitelist_AdBlock;Landroid/support/design/widget/BottomSheetDialog;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lde/baumann/browser/Activity/Whitelist_AdBlock$2;->this$0:Lde/baumann/browser/Activity/Whitelist_AdBlock;

    iput-object p2, p0, Lde/baumann/browser/Activity/Whitelist_AdBlock$2;->val$dialog:Landroid/support/design/widget/BottomSheetDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 110
    new-instance p1, Lde/baumann/browser/Browser/AdBlock;

    iget-object v0, p0, Lde/baumann/browser/Activity/Whitelist_AdBlock$2;->this$0:Lde/baumann/browser/Activity/Whitelist_AdBlock;

    invoke-direct {p1, v0}, Lde/baumann/browser/Browser/AdBlock;-><init>(Landroid/content/Context;)V

    .line 111
    invoke-virtual {p1}, Lde/baumann/browser/Browser/AdBlock;->clearDomains()V

    .line 112
    iget-object p1, p0, Lde/baumann/browser/Activity/Whitelist_AdBlock$2;->this$0:Lde/baumann/browser/Activity/Whitelist_AdBlock;

    invoke-static {p1}, Lde/baumann/browser/Activity/Whitelist_AdBlock;->access$000(Lde/baumann/browser/Activity/Whitelist_AdBlock;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 113
    iget-object p1, p0, Lde/baumann/browser/Activity/Whitelist_AdBlock$2;->this$0:Lde/baumann/browser/Activity/Whitelist_AdBlock;

    invoke-static {p1}, Lde/baumann/browser/Activity/Whitelist_AdBlock;->access$100(Lde/baumann/browser/Activity/Whitelist_AdBlock;)Lde/baumann/browser/View/Adapter_AbBlock;

    move-result-object p1

    invoke-virtual {p1}, Lde/baumann/browser/View/Adapter_AbBlock;->notifyDataSetChanged()V

    .line 114
    iget-object p1, p0, Lde/baumann/browser/Activity/Whitelist_AdBlock$2;->val$dialog:Landroid/support/design/widget/BottomSheetDialog;

    invoke-virtual {p1}, Landroid/support/design/widget/BottomSheetDialog;->cancel()V

    return-void
.end method

.class Lde/baumann/browser/Activity/Whitelist_Javascript$3;
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

    .line 118
    iput-object p1, p0, Lde/baumann/browser/Activity/Whitelist_Javascript$3;->this$0:Lde/baumann/browser/Activity/Whitelist_Javascript;

    iput-object p2, p0, Lde/baumann/browser/Activity/Whitelist_Javascript$3;->val$dialog:Landroid/support/design/widget/BottomSheetDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 121
    iget-object p1, p0, Lde/baumann/browser/Activity/Whitelist_Javascript$3;->val$dialog:Landroid/support/design/widget/BottomSheetDialog;

    invoke-virtual {p1}, Landroid/support/design/widget/BottomSheetDialog;->cancel()V

    return-void
.end method

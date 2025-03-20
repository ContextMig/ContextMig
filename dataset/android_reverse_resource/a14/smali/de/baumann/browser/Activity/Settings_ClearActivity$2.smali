.class Lde/baumann/browser/Activity/Settings_ClearActivity$2;
.super Ljava/lang/Object;
.source "Settings_ClearActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/baumann/browser/Activity/Settings_ClearActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/baumann/browser/Activity/Settings_ClearActivity;

.field final synthetic val$dialog:Landroid/support/design/widget/BottomSheetDialog;


# direct methods
.method constructor <init>(Lde/baumann/browser/Activity/Settings_ClearActivity;Landroid/support/design/widget/BottomSheetDialog;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lde/baumann/browser/Activity/Settings_ClearActivity$2;->this$0:Lde/baumann/browser/Activity/Settings_ClearActivity;

    iput-object p2, p0, Lde/baumann/browser/Activity/Settings_ClearActivity$2;->val$dialog:Landroid/support/design/widget/BottomSheetDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 76
    iget-object p1, p0, Lde/baumann/browser/Activity/Settings_ClearActivity$2;->val$dialog:Landroid/support/design/widget/BottomSheetDialog;

    invoke-virtual {p1}, Landroid/support/design/widget/BottomSheetDialog;->cancel()V

    return-void
.end method

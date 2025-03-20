.class Lde/baumann/browser/Fragment/Fragment_settings$1;
.super Ljava/lang/Object;
.source "Fragment_settings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/baumann/browser/Fragment/Fragment_settings;->showLicenseDialog(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/baumann/browser/Fragment/Fragment_settings;

.field final synthetic val$dialog:Landroid/support/design/widget/BottomSheetDialog;


# direct methods
.method constructor <init>(Lde/baumann/browser/Fragment/Fragment_settings;Landroid/support/design/widget/BottomSheetDialog;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lde/baumann/browser/Fragment/Fragment_settings$1;->this$0:Lde/baumann/browser/Fragment/Fragment_settings;

    iput-object p2, p0, Lde/baumann/browser/Fragment/Fragment_settings$1;->val$dialog:Landroid/support/design/widget/BottomSheetDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 125
    iget-object p1, p0, Lde/baumann/browser/Fragment/Fragment_settings$1;->val$dialog:Landroid/support/design/widget/BottomSheetDialog;

    invoke-virtual {p1}, Landroid/support/design/widget/BottomSheetDialog;->cancel()V

    return-void
.end method
